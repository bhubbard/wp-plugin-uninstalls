-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('anysearch_last_sync', 'activated_anysearch', 'anysearch_sync_settings', 'anysearch_api_key', 'anysearch_frontend_key', 'anysearch_sync_status', 'anysearch_notices', 'anysearch_ssl_disabled');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

