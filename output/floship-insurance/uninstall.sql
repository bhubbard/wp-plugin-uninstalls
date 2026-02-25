-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('floship_insurance_table_version', 'woocommerce_currency', 'wc_settings_tab_consumer_id', 'wc_settings_tab_show_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('insurance_certificate_link', 'certificate_claim_link', 'insurance_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('insurance_certificate_link', 'certificate_claim_link', 'insurance_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('insurance_certificate_link', 'certificate_claim_link', 'insurance_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('insurance_certificate_link', 'certificate_claim_link', 'insurance_status');

