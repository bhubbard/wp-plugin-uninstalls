-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cocart_version', 'cocart_install_date', 'cocart_admin_notices', 'cocart_plugin_suggestions', 'airplane-mode', 'auto_update_plugins', 'cocart_schema_missing_tables', 'active_sitewide_plugins', 'cocart_db_version', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_placeholder_image', 'woocommerce_default_catalog_orderby', 'woocommerce_tax_display_cart', 'woocommerce_tax_total_display', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_default_country', 'woocommerce_store_postcode', 'woocommerce_hide_out_of_stock_items', 'woocommerce_tax_display_shop', 'woocommerce_currency_pos', 'advanced_shipping_packages_default_package_name', 'cocart_setup_wizard_store_new', '_cocart_db_creation_failed', '_cocart_activation_redirect', 'cocart_plugin_data', 'cocart_installing');
DELETE FROM wp_options WHERE option_name LIKE 'cocart_admin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'cocart_plugin_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_cocart_base_tables_missing_notice', 'dismissed_cocart_update_db_notice', '_woocommerce_load_saved_cart_after_login', 'display_type', 'order', 'thumbnail_id', '_wp_attachment_image_alt', 'rating', 'verified', '_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_cocart_base_tables_missing_notice', 'dismissed_cocart_update_db_notice', '_woocommerce_load_saved_cart_after_login', 'display_type', 'order', 'thumbnail_id', '_wp_attachment_image_alt', 'rating', 'verified', '_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_cocart_base_tables_missing_notice', 'dismissed_cocart_update_db_notice', '_woocommerce_load_saved_cart_after_login', 'display_type', 'order', 'thumbnail_id', '_wp_attachment_image_alt', 'rating', 'verified', '_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_cocart_base_tables_missing_notice', 'dismissed_cocart_update_db_notice', '_woocommerce_load_saved_cart_after_login', 'display_type', 'order', 'thumbnail_id', '_wp_attachment_image_alt', 'rating', 'verified', '_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'order_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'order_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'order_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'order_%';

