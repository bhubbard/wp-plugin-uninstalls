-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('upd_brief_mainwp_version', 'upd_brief_settings', 'upd_brief_encrypted_mainwp_api_key', 'upd_brief_encrypted_update_brief_api_key');
DELETE FROM wp_options WHERE option_name LIKE '%_APIManAdder';

