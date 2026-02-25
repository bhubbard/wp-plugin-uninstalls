-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shipi_integration_key', 'woocommerce_custom_orders_table_enabled', 'woocommerce_currency', 'active_sitewide_plugins', 'woocommerce_feature_product_block_editor_enabled', 'shipi_nonce_temp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipi_hs_code', 'shipi_pushed', '_shipi_tracking_no', '_shipi_carrier', '_shipi_carrier_label', '_shipi_order_processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipi_hs_code', 'shipi_pushed', '_shipi_tracking_no', '_shipi_carrier', '_shipi_carrier_label', '_shipi_order_processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipi_hs_code', 'shipi_pushed', '_shipi_tracking_no', '_shipi_carrier', '_shipi_carrier_label', '_shipi_order_processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipi_hs_code', 'shipi_pushed', '_shipi_tracking_no', '_shipi_carrier', '_shipi_carrier_label', '_shipi_order_processed');

