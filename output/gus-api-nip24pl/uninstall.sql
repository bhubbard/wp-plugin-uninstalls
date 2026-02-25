-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_nip24_option_keyid', 'woocommerce_nip24_option_key', 'woocommerce_version', 'woocommerce_nip24_option_url', 'woocommerce_nip24_option_vatid_field', 'woocommerce_nip24_option_vatid_required');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_company_vat_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_company_vat_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_company_vat_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_company_vat_id');

