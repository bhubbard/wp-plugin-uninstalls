-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frontend_product_additional_fields', 'frontend_product_status', 'frontend_product_category', 'frontend_product_user_role', 'frontend_product_save_update_email', 'frontend_product_save_update_email_admin', 'bytes_permalink_update', 'woocommerce_install_and_activate_admin_notices', 'deferred_admin_notices', 'bytes_plugin_template', 'bytes_plugin_page_id', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_status', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_status', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_status', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_status', '_regular_price');

