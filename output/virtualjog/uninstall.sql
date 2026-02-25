-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('virtualjog_cookie_module_domain', 'virtualjog_access_token', 'virtualjog_cookie_module_script', 'virtualjog_cookie_module_enabled', 'virtualjog_client_data', 'netjog_virtualjog_alerts');

