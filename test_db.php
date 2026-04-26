<?php
require_once 'admin/inc/config.php';

echo "Testing Database Connection...\n";

try {
    // Test connection
    echo "Database: ecommerceweb\n";
    echo "Host: localhost\n";
    echo "User: root\n\n";
    
    // Show tables
    $stmt = $pdo->query("SHOW TABLES");
    echo "Tables in database:\n";
    while($row = $stmt->fetch()) {
        echo "- " . $row[0] . "\n";
    }
    
    echo "\nChecking key tables for data:\n";
    
    // Check settings
    $stmt = $pdo->query("SELECT COUNT(*) as count FROM tbl_settings");
    $result = $stmt->fetch();
    echo "tbl_settings: " . $result['count'] . " records\n";
    
    // Check slider
    $stmt = $pdo->query("SELECT COUNT(*) as count FROM tbl_slider");
    $result = $stmt->fetch();
    echo "tbl_slider: " . $result['count'] . " records\n";
    
    // Check products
    $stmt = $pdo->query("SELECT COUNT(*) as count FROM tbl_product");
    $result = $stmt->fetch();
    echo "tbl_product: " . $result['count'] . " records\n";
    
    // Check service
    $stmt = $pdo->query("SELECT COUNT(*) as count FROM tbl_service");
    $result = $stmt->fetch();
    echo "tbl_service: " . $result['count'] . " records\n";
    
} catch(PDOException $e) {
    echo "Error: " . $e->getMessage() . "\n";
}
?>
