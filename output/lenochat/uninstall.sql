-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lenochat_status', 'lenochat_license', 'lenochat_language', 'lenochat_company_id');

