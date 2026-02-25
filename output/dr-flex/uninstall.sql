-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_drflex_cache_db_version', 'drflex_api_key', 'drflex_connection_status', 'drflex_callback_textarea', 'drflex_button_configs');

