-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('access_watch_api_key', 'access_watch_api_key_registered', 'access_watch_site_id', 'access_watch_access_token', 'access_watch_user_email');

