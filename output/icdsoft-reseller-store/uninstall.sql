-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ICD_Hosting_Admin_Notices', 'icd_hosting_version', 'icd_hosting_excluded_pages_ids', 'icd_hosting_domaincheck_page_id', 'icd_hosting_hostingorder_page_id', 'icd_hosting_certificates_page_id', 'icd_hosting_thankyou_page_id', 'icd_hosting_terms_page_id', 'icd_hosting_payment_page_id', 'icd_hosting_postback_page_id', 'icd_hosting_request_page_id', 'icd_hosting_renew_page_id');
DELETE FROM wp_options WHERE option_name LIKE 'icd_hosting_admin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

