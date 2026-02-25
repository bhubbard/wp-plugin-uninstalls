-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hd_wc_ie_plus_product_code', 'hd_wc_ie_plus_exemption_name', 'hd_wc_ie_plus_exemption_reason', 'hd_wc_ie_plus_sequences_cache', 'hd_wc_ie_plus_filename_prefix', 'hd_wc_ie_plus_transport_guide_email_address', 'hd_wc_ie_plus_email_method', 'hd_wc_ie_plus_pending_email', 'hd_wc_ie_plus_automatic_email_errors', 'hd_wc_ie_plus_send_invoice_subject', 'hd_wc_ie_plus_send_invoice_heading', 'hd_wc_ie_plus_send_invoice_body', 'hd_wc_ie_plus_document_entity', 'hd_wc_ie_plus_pending_finalize', 'hd_wc_ie_plus_guide_get_at_code', 'hd_wc_ie_plus_guide_get_at_code_delay_email', 'hd_wc_ie_plus_default_tax', 'hd_wc_ie_plus_notices', 'hd_wc_ie_plus_api_token', 'hd_wc_ie_plus_subdomain', 'hd_wc_ie_plus_vat_field_mandatory', 'hd_wc_ie_plus_leave_as_draft', 'hd_wc_ie_plus_tax_country', 'hd_wc_ie_plus_vat_field', 'hd_wc_ie_plus_create_bulk_invoice', 'hd_wc_ie_plus_db_version', 'hd_wc_ie_plus_vat_field_prefix');
DELETE FROM wp_options WHERE option_name LIKE 'hd_wc_ie_plus_send_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hd_wc_ie_plus_invoice_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('hd_wc_ie_plus_invoice_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('hd_wc_ie_plus_invoice_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hd_wc_ie_plus_invoice_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

