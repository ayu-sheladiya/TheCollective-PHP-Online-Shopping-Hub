
<div class="filter-sidebar">

    <!-- Price Filter -->
    <div class="filter-section">
        <h4 class="filter-title">Price Range</h4>
        <div class="price-filter">
            <div class="price-inputs">
                <div class="price-field">
                    <label>Min</label>
                    <input type="number" id="filter-price-min" placeholder="₹0" min="0" value="">
                </div>
                <span class="price-dash">—</span>
                <div class="price-field">
                    <label>Max</label>
                    <input type="number" id="filter-price-max" placeholder="₹10000" min="0" value="">
                </div>
            </div>
            <div class="price-presets">
                <button class="price-preset" data-min="0" data-max="500">Under ₹500</button>
                <button class="price-preset" data-min="500" data-max="1000">₹500 - ₹1K</button>
                <button class="price-preset" data-min="1000" data-max="3000">₹1K - ₹3K</button>
                <button class="price-preset" data-min="3000" data-max="10000">₹3K+</button>
            </div>
        </div>
    </div>

    <!-- Size Filter -->
    <div class="filter-section">
        <h4 class="filter-title">Size</h4>
        <div class="size-filter">
            <?php
            $sizes = array('XS','S','M','L','XL','XXL','3XL');
            foreach($sizes as $size) {
                ?>
                <label class="size-chip">
                    <input type="checkbox" class="filter-size" value="<?php echo $size; ?>">
                    <span><?php echo $size; ?></span>
                </label>
                <?php
            }
            ?>
        </div>
    </div>

    <!-- Color Filter -->
    <div class="filter-section">
        <h4 class="filter-title">Color</h4>
        <div class="color-filter">
            <?php
            $colors = array(
                'Black' => '#000000',
                'White' => '#FFFFFF',
                'Red' => '#E74C3C',
                'Blue' => '#3498DB',
                'Green' => '#27AE60',
                'Navy' => '#2C3E50',
                'Brown' => '#8B6914',
                'Pink' => '#E91E8B',
                'Gray' => '#95A5A6',
                'Yellow' => '#F1C40F',
                'Orange' => '#E67E22',
                'Maroon' => '#800000',
            );
            foreach($colors as $name => $hex) {
                ?>
                <label class="color-dot" title="<?php echo $name; ?>">
                    <input type="checkbox" class="filter-color" value="<?php echo $name; ?>">
                    <span style="background:<?php echo $hex; ?>;<?php if($name=='White') echo 'border:1.5px solid #ddd;'; ?>"></span>
                    <small><?php echo $name; ?></small>
                </label>
                <?php
            }
            ?>
        </div>
    </div>

    <!-- Availability Filter -->
    <div class="filter-section">
        <h4 class="filter-title">Availability</h4>
        <div class="availability-filter">
            <label class="toggle-filter">
                <input type="checkbox" id="filter-in-stock" checked>
                <span class="toggle-label">In Stock Only</span>
            </label>
            <label class="toggle-filter">
                <input type="checkbox" id="filter-on-sale">
                <span class="toggle-label">On Sale</span>
            </label>
        </div>
    </div>

    <!-- Sort By -->
    <div class="filter-section">
        <h4 class="filter-title">Sort By</h4>
        <select id="filter-sort" class="filter-select">
            <option value="default">Default</option>
            <option value="price-low">Price: Low to High</option>
            <option value="price-high">Price: High to Low</option>
            <option value="name-az">Name: A to Z</option>
            <option value="name-za">Name: Z to A</option>
            <option value="newest">Newest First</option>
        </select>
    </div>

    <!-- Apply / Reset -->
    <div class="filter-actions">
        <button class="btn-filter-apply" onclick="applyFilters()">Apply Filters</button>
        <button class="btn-filter-reset" onclick="resetFilters()">Reset All</button>
    </div>
</div>

<script>
function applyFilters() {
    var products = document.querySelectorAll('.item-product-cat');
    var minPrice = parseFloat(document.getElementById('filter-price-min').value) || 0;
    var maxPrice = parseFloat(document.getElementById('filter-price-max').value) || 999999;
    var inStockOnly = document.getElementById('filter-in-stock').checked;
    var onSaleOnly = document.getElementById('filter-on-sale').checked;
    var sortBy = document.getElementById('filter-sort').value;

    // Get selected sizes
    var selectedSizes = [];
    document.querySelectorAll('.filter-size:checked').forEach(function(cb) {
        selectedSizes.push(cb.value.toLowerCase());
    });

    // Get selected colors
    var selectedColors = [];
    document.querySelectorAll('.filter-color:checked').forEach(function(cb) {
        selectedColors.push(cb.value.toLowerCase());
    });

    var visibleProducts = [];

    products.forEach(function(product) {
        var priceText = product.querySelector('.text h4');
        if (!priceText) { product.style.display = 'none'; return; }
        
        var priceMatch = priceText.textContent.match(/[\d,]+/);
        var price = priceMatch ? parseFloat(priceMatch[0].replace(/,/g, '')) : 0;
        
        var hasSale = priceText.querySelector('del') !== null;
        var isOutOfStock = product.querySelector('.out-of-stock') !== null;
        var productName = (product.querySelector('.text h3 a') || {}).textContent || '';
        
        var show = true;

        // Price filter
        if (price < minPrice || price > maxPrice) show = false;

        // Stock filter
        if (inStockOnly && isOutOfStock) show = false;

        // Sale filter
        if (onSaleOnly && !hasSale) show = false;

        var pSizes = (product.getAttribute('data-sizes') || '').split(',');
        var pColors = (product.getAttribute('data-colors') || '').split(',');

        // Size filter
        if (selectedSizes.length > 0) {
            var sizeMatch = false;
            for(var i=0; i<selectedSizes.length; i++) {
                if (pSizes.indexOf(selectedSizes[i]) !== -1) { sizeMatch = true; break; }
            }
            if (!sizeMatch) show = false;
        }

        // Color filter
        if (selectedColors.length > 0) {
            var colorMatch = false;
            for(var i=0; i<selectedColors.length; i++) {
                if (pColors.indexOf(selectedColors[i]) !== -1) { colorMatch = true; break; }
            }
            if (!colorMatch) show = false;
        }

        if (show) {
            product.style.display = '';
            visibleProducts.push({ el: product, price: price, name: productName });
        } else {
            product.style.display = 'none';
        }
    });

    // Sort
    if (sortBy !== 'default' && visibleProducts.length > 1) {
        var container = products[0].parentNode;
        visibleProducts.sort(function(a, b) {
            switch(sortBy) {
                case 'price-low': return a.price - b.price;
                case 'price-high': return b.price - a.price;
                case 'name-az': return a.name.localeCompare(b.name);
                case 'name-za': return b.name.localeCompare(a.name);
                default: return 0;
            }
        });
        visibleProducts.forEach(function(item) {
            container.appendChild(item.el);
        });
    }
}

function resetFilters() {
    document.getElementById('filter-price-min').value = '';
    document.getElementById('filter-price-max').value = '';
    document.getElementById('filter-in-stock').checked = true;
    document.getElementById('filter-on-sale').checked = false;
    document.getElementById('filter-sort').value = 'default';
    document.querySelectorAll('.filter-size:checked, .filter-color:checked').forEach(function(cb) {
        cb.checked = false;
    });
    document.querySelectorAll('.price-preset').forEach(function(btn) {
        btn.classList.remove('active');
    });
    document.querySelectorAll('.size-chip').forEach(function(chip) {
        chip.classList.remove('active');
    });
    document.querySelectorAll('.color-dot').forEach(function(dot) {
        dot.classList.remove('active');
    });
    document.querySelectorAll('.item-product-cat').forEach(function(p) {
        p.style.display = '';
    });
}

// Price presets
document.querySelectorAll('.price-preset').forEach(function(btn) {
    btn.addEventListener('click', function() {
        document.querySelectorAll('.price-preset').forEach(function(b) { b.classList.remove('active'); });
        this.classList.add('active');
        document.getElementById('filter-price-min').value = this.dataset.min;
        document.getElementById('filter-price-max').value = this.dataset.max;
    });
});

// Size chip toggle
document.querySelectorAll('.size-chip').forEach(function(chip) {
    chip.addEventListener('click', function() {
        setTimeout(function() {
            chip.classList.toggle('active', chip.querySelector('input').checked);
        }, 10);
    });
});

// Color dot toggle
document.querySelectorAll('.color-dot').forEach(function(dot) {
    dot.addEventListener('click', function() {
        setTimeout(function() {
            dot.classList.toggle('active', dot.querySelector('input').checked);
        }, 10);
    });
});
</script>