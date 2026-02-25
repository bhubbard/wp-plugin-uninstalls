-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('actionnetwork_api_key', 'actionnetwork_version', 'actionnetwork_db_version', 'actionnetwork_deferred_admin_notices', 'actionnetwork_cache_timestamp', 'actionnetwork_queue_status', 'actionnetwork_ajax_token', 'actionnetwork_show_sync_notice', 'actionnetwork_hcaptcha_site_key', 'actionnetwork_hcaptcha_secret_key');

