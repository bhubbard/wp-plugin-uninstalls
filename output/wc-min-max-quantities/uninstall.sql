-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_min_max_quantities_installed', 'woocommerce_enable_ajax_add_to_cart', 'wc_min_max_quantities_install_date', 'wc_minmax_quantity_general_settings', 'wc_minmax_quantity_advanced_settings', 'wc_minmax_quantities_min_product_quantity', 'wc_minmax_quantities_max_product_quantity', 'wc_minmax_quantities_min_product_price', 'wc_minmax_quantities_max_product_price', 'wc_minmax_quantities_hide_checkout', 'wc_minmax_quantities_min_cart_total_price', 'wc_minmax_quantities_max_cart_total_price', 'wc_minmax_quantities_migrated_products', 'wc_min_max_quantities_settings', 'wcmmq_step', 'wcmmq_min_qty', 'wcmmq_max_qty', 'wcmmq_min_cart_qty', 'wcmmq_max_cart_qty', 'wcmmq_min_cart_total', 'wcmmq_max_cart_total', 'active_sitewide_plugins', 'wc_minmax_quantitiess_install_date', 'wc_min_max_quantities_version', 'wc_min_max_quantities_activated', 'wc_min_max_quantities_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcmmq_enable', '_wcmmq_disable', '_wcmmq_step', '_wcmmq_min_qty', '_wcmmq_max_qty');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcmmq_enable', '_wcmmq_disable', '_wcmmq_step', '_wcmmq_min_qty', '_wcmmq_max_qty');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcmmq_enable', '_wcmmq_disable', '_wcmmq_step', '_wcmmq_min_qty', '_wcmmq_max_qty');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcmmq_enable', '_wcmmq_disable', '_wcmmq_step', '_wcmmq_min_qty', '_wcmmq_max_qty');

