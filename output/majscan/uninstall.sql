-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('majscan_temp_messages', 'majscan_admin_accessible', 'majscan_plugins', 'majscan_themes', 'majscan_wordpress', 'majscan_vide', 'majscan_enable_cron', 'majscan_cron_frequency', 'majscan_email', 'majscan_admin', 'majscan_cron_last_execution', 'majscan_cron_last_source', 'majscan_temp_next_execution', 'majscan_last_error', 'majscan_hosting_provider', 'majscan_latest_php_version', 'update_core', 'update_plugins', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('majscan_last_notification');
DELETE FROM wp_usermeta WHERE meta_key IN ('majscan_last_notification');
DELETE FROM wp_termmeta WHERE meta_key IN ('majscan_last_notification');
DELETE FROM wp_commentmeta WHERE meta_key IN ('majscan_last_notification');

