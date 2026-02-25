-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('backuply_backup_stopped', 'backuply_status', 'backuply_notify_email_address', 'backuply_last_backup', 'backuply_additional_fileindex', 'backuply_pro_version', 'backuply_cron_settings', 'backuply_config_keys', 'backuply_remote_backup_locs', 'backuply_version', 'backuply_settings', 'backuply_license', 'backuply_excludes', 'backuply_debug', 'bcloud_key', 'backuply_cron_schedules', 'backuply_hide_trial', 'backuply_promo_time', 'backuply_last_restore', 'backuply_hide_holiday', 'backuply_black_friday', 'external_updates-backuply-pro', 'backuply_offer_time', 'backuply_backup_nag', 'backuply_license_notice', 'bcloud_trial_time', 'softaculous_plugin_update_notice', 'backuply_litespeed_notice', 'backuply_restore_session_key', 'backuply_sql_repair_log', 'bcloud_data', 'update_plugins', 'bcloud_trial_token');

