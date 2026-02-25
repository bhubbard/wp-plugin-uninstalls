<?php

require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/src/PluginAnalyzer.php';

use WPUninstaller\PluginAnalyzer;

// Create a dummy file that attempts to add both custom options and core options
$testDir = sys_get_temp_dir() . '/wp-uninstaller-test';
if (!is_dir($testDir)) {
    mkdir($testDir, 0777, true);
}

$testFile = $testDir . '/test-options.php';
$dummyCode = <<<PHP
<?php
// Custom options
add_option('my_custom_plugin_option', 'value');
update_option('another_custom_option', 'value');

// Core options that should be ignored
add_option('siteurl', 'http://example.com');
update_option('home', 'http://example.com');
update_option('admin_email', 'admin@example.com');
PHP;

file_put_contents($testFile, $dummyCode);

// Analyze
$analyzer = new PluginAnalyzer();
$findings = $analyzer->analyzeDirectory($testDir);

// Verify
echo "Options Found: \n";
print_r($findings['options']);

// Cleanup
unlink($testFile);
rmdir($testDir);
