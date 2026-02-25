-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('projectagora_option__htscript_url', 'projectagora_option__notify_support_consent');

