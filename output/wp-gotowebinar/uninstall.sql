-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gotowebinar_settings', 'gotowebinar_log', 'gotowebinar_connection_log', 'gotowebinar_auth_settings', 'northern_beaches_websites', 'wp-gotowebinar-update', 'gotowebinar_auth_settings');

