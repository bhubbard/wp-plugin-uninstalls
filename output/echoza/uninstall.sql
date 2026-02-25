-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('echoza_enabled', 'echoza_app_key', 'echoza_version', 'echoza_app_secret', 'echoza_endpoint', 'echoza_access_token');

