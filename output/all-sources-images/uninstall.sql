-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ALLSI_plugin_cron_settings', 'ALLSI_plugin_compatibility_settings', 'ALLSI_plugin_banks_settings', 'ALLSI_plugin_main_settings', 'ALLSI_plugin_proxy_settings', 'ALLSI_plugin_block_settings', 'ALLSI_plugin_posts_settings', 'ALLSI_plugin_interval_settings', 'ALLSI_plugin_rights_settings', 'ALLSI_plugin_logs_settings', 'ALLSI_hook_checked', 'ALLSI_bulk_db_version', 'ALLSI_plugin_activation_date', 'ALLSI_interval_generation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_started';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_started';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_started';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_started';

