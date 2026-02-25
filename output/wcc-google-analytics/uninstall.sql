-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_analytics_client_id', 'google_analytics_client_secret', 'google_analytics_auth', 'google_analytics_api_key', 'google_analytics_db_version');

