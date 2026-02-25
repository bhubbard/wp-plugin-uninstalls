-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_prices_include_tax', 'pfacturas_settings_v2');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pf_rut_flag', '_pfacturas_emitted', '_pfacturas_emisor_tipo', '_pfacturas_motivos_rechazo', '_pfacturas_last_error', '_pfacturas_CFESerie', '_pfacturas_CFENumero', '_pf_ref_cfe_serie', '_pf_ref_cfe_numero', '_pf_rut', '_pf_razon_social', '_pf_tipo_doc_pf', '_pf_doc_pf', '_pfacturas_PDFLink', '_pf_otra_tasa');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pf_rut_flag', '_pfacturas_emitted', '_pfacturas_emisor_tipo', '_pfacturas_motivos_rechazo', '_pfacturas_last_error', '_pfacturas_CFESerie', '_pfacturas_CFENumero', '_pf_ref_cfe_serie', '_pf_ref_cfe_numero', '_pf_rut', '_pf_razon_social', '_pf_tipo_doc_pf', '_pf_doc_pf', '_pfacturas_PDFLink', '_pf_otra_tasa');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pf_rut_flag', '_pfacturas_emitted', '_pfacturas_emisor_tipo', '_pfacturas_motivos_rechazo', '_pfacturas_last_error', '_pfacturas_CFESerie', '_pfacturas_CFENumero', '_pf_ref_cfe_serie', '_pf_ref_cfe_numero', '_pf_rut', '_pf_razon_social', '_pf_tipo_doc_pf', '_pf_doc_pf', '_pfacturas_PDFLink', '_pf_otra_tasa');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pf_rut_flag', '_pfacturas_emitted', '_pfacturas_emisor_tipo', '_pfacturas_motivos_rechazo', '_pfacturas_last_error', '_pfacturas_CFESerie', '_pfacturas_CFENumero', '_pf_ref_cfe_serie', '_pf_ref_cfe_numero', '_pf_rut', '_pf_razon_social', '_pf_tipo_doc_pf', '_pf_doc_pf', '_pfacturas_PDFLink', '_pf_otra_tasa');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_pfacturas_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_pfacturas_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_pfacturas_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pfacturas_%';

