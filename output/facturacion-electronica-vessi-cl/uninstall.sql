-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vfec_vessicl_auto_emitir', 'vfec_vessicl_access_key', 'vfec_vessicl_secret_key', 'vfec_vessicl_email_from', 'vfec_vessicl_rut_emisor', 'vfec_vessicl_api_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_facturacion_document_type_temp', 'woo_facturacion_document_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_facturacion_document_type_temp', 'woo_facturacion_document_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_facturacion_document_type_temp', 'woo_facturacion_document_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_facturacion_document_type_temp', 'woo_facturacion_document_type');

