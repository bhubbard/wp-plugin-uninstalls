-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apisunat_logtail_token', 'apisunat_fecha', 'apisunat_forma_envio', 'apisunat_no_doc', 'apisunat_key_tipo_comprobante', 'apisunat_serie_nc_factura', 'apisunat_serie_nc_boleta', 'apisunat_personal_id', 'apisunat_personal_token', 'apisunat_serie_factura', 'apisunat_serie_boleta', 'apisunat_tipo_tributo', 'apisunat_factor_tributo', 'apisunat_include_time', 'apisunat_shipping_cost', 'apisunat_debug_mode', 'apisunat_custom_checkout', 'apisunat_key_value_factura', 'apisunat_key_value_boleta', 'apisunat_key_tipo_documento', 'apisunat_key_value_dni', 'apisunat_key_value_ruc', 'apisunat_key_value_pasaporte', 'apisunat_key_value_otros_extranjero', 'apisunat_key_numero_documento', 'apisunat_ruc', 'apisunat_company_name', 'apisunat_company_address');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_apisunat_meta_data_mapping', 'apisunat_document_status', 'apisunat_document_id', 'apisunat_document_filename');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_apisunat_meta_data_mapping', 'apisunat_document_status', 'apisunat_document_id', 'apisunat_document_filename');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_apisunat_meta_data_mapping', 'apisunat_document_status', 'apisunat_document_id', 'apisunat_document_filename');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_apisunat_meta_data_mapping', 'apisunat_document_status', 'apisunat_document_id', 'apisunat_document_filename');

