-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('poplugin_registered_org', 'poplugin_user_exists', 'update_onboard_script');
DELETE FROM wp_options WHERE option_name LIKE '%_onboard_script';

