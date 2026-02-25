-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cb_api_integration', 'cb_api_country', 'cb_sync_stock', 'cb_sync_price', 'cb_sync_price_with_iva', 'plugin_version', 'cb_api_client_id', 'cb_api_client_secret', 'cb_version', 'cb_accepted_status', 'cb_cancelled_status', 'cb_credenciales_enviadas', 'cb_uninstalled_at', 'user_email', 'wc_api_integration', 'wc_api_client_secret', 'cb_installed_at', 'woocommerce_api_enabled', 'wc_add_dni_fields', 'cb_default_dni', 'cb_default_type', 'cb_custom_type_name', 'cb_custom_dni_name', 'contabilium_access_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_stock', '_customer_user', 'shipping_first_name', 'shipping_last_name', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_sku', 'cb_comprobante_id', 'cb_document_type', 'cb_document_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_stock', '_customer_user', 'shipping_first_name', 'shipping_last_name', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_sku', 'cb_comprobante_id', 'cb_document_type', 'cb_document_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_stock', '_customer_user', 'shipping_first_name', 'shipping_last_name', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_sku', 'cb_comprobante_id', 'cb_document_type', 'cb_document_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_stock', '_customer_user', 'shipping_first_name', 'shipping_last_name', 'shipping_company', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_state', 'shipping_postcode', 'shipping_country', '_sku', 'cb_comprobante_id', 'cb_document_type', 'cb_document_number');

