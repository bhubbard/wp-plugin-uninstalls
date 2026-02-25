-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xoo-wsc-pattern-init', 'xoo-wsc-old-header-layout', 'xoo-el-version', 'xoo-el-sy-options', 'xoo-el-gl-options', 'xoo-el-settings-init', 'xoo-wsc-enqueue-cartfragment', 'xoo-wsc-gl-options', 'xoo-wsc-sy-options', 'xoo_tracking_consent_side-cart-woocommerce');
DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_%';
DELETE FROM wp_options WHERE option_name LIKE '%_theme_templates_data';
DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_last_sent_%';

