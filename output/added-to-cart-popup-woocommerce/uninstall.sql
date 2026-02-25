-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xoo_cp_added_cart_key', 'xoo-cp-gl-atcem', 'xoo-cp-version', 'woocommerce_enable_ajax_add_to_cart');
DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_%';
DELETE FROM wp_options WHERE option_name LIKE '%_theme_templates_data';
DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_last_sent_%';

