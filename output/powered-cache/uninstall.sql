-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoptimize_html', 'autoptimize_css', 'autoptimize_js', 'peadig_eucookie', 'jetpack_boost_config', 'woocommerce_default_customer_address');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

