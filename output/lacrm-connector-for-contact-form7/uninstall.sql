-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lacrm_user_code', 'lacrm_api_token', 'lacrm_verify_token', 'lacrm_info');

