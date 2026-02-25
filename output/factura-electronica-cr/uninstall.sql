-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fvcr_modo_hacienda', 'fvcr_access_token', 'fvcr_api_token', 'fvcr_economic_activity_hacienda', 'fvcr_when_send_fe', 'fvcr_sucursal', 'fvcr_emitir_fe', 'fvcr_emitir_te', 'fvcr_afectar_inventario', 'fvcr_exchange_rate', 'fvcr_db_version', 'last_automatic_fvcr_exchange_rate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fvcr_billing_fv_identification_type', 'fvcr_billing_fv_identification_number', 'fvcr_billing_fv_required_fe', 'fvcr_unid_hacienda', 'fvcr_cabys', 'fvcr_hacienda_clave', 'fvcr_error', 'fvcr_last_send_date_xml', 'fvcr_product_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('fvcr_billing_fv_identification_type', 'fvcr_billing_fv_identification_number', 'fvcr_billing_fv_required_fe', 'fvcr_unid_hacienda', 'fvcr_cabys', 'fvcr_hacienda_clave', 'fvcr_error', 'fvcr_last_send_date_xml', 'fvcr_product_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('fvcr_billing_fv_identification_type', 'fvcr_billing_fv_identification_number', 'fvcr_billing_fv_required_fe', 'fvcr_unid_hacienda', 'fvcr_cabys', 'fvcr_hacienda_clave', 'fvcr_error', 'fvcr_last_send_date_xml', 'fvcr_product_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fvcr_billing_fv_identification_type', 'fvcr_billing_fv_identification_number', 'fvcr_billing_fv_required_fe', 'fvcr_unid_hacienda', 'fvcr_cabys', 'fvcr_hacienda_clave', 'fvcr_error', 'fvcr_last_send_date_xml', 'fvcr_product_type');

