-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('g_ffl_cockpit_plugin_name', 'g_ffl_cockpit_key', 'g_ffl_cockpit_plugin_logo_url', 'woocommerce_ship_to_destination', 'woocommerce_api_enabled', 'woocommerce_enable_legacy_rest_api', 'woocommerce_webhook_delivery_enabled', 'woocommerce_session_handler', 'woocommerce_default_customer_address', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE 'ffl_download_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('automated_listing', '_is_duplicate', '_duplicated_by', '_duplicated_at', '_original_product_id', '_garidium_wpseo_metadesc', '_upc', '_manufacturer', '_mpn', '_garidium_brand', 'brand', '_garidium_wpseo_json_ld', '_wp_attachment_image_alt', 'upc');
DELETE FROM wp_usermeta WHERE meta_key IN ('automated_listing', '_is_duplicate', '_duplicated_by', '_duplicated_at', '_original_product_id', '_garidium_wpseo_metadesc', '_upc', '_manufacturer', '_mpn', '_garidium_brand', 'brand', '_garidium_wpseo_json_ld', '_wp_attachment_image_alt', 'upc');
DELETE FROM wp_termmeta WHERE meta_key IN ('automated_listing', '_is_duplicate', '_duplicated_by', '_duplicated_at', '_original_product_id', '_garidium_wpseo_metadesc', '_upc', '_manufacturer', '_mpn', '_garidium_brand', 'brand', '_garidium_wpseo_json_ld', '_wp_attachment_image_alt', 'upc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('automated_listing', '_is_duplicate', '_duplicated_by', '_duplicated_at', '_original_product_id', '_garidium_wpseo_metadesc', '_upc', '_manufacturer', '_mpn', '_garidium_brand', 'brand', '_garidium_wpseo_json_ld', '_wp_attachment_image_alt', 'upc');

