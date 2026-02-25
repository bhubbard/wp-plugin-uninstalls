-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kmcf7se_message_delete_data', 'kmcf7se_provider', 'kmcf7se_show_errors', 'kmcf7se_show_whatsapp_errors', 'kmcf7se_api_sid', 'kmcf7se_api_token', 'kmcf7se_senderid', 'km_error', 'km_error_message', 'kmcf7se_whatsapp_number', 'kmcf7se_whatsapp_key', 'kmcf7se_whatsapp_language', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

