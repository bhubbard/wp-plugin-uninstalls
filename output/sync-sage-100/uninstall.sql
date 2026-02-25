-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpss_data', 'current_theme', 'woocommerce_wpss_upload_dir', 'wpss_options');

