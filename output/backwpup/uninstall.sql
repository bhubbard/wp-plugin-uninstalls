-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('backwpup_onboarding', 'backwpup_cfg_hash', 'backwpup_activation_time', 'backwpup_easycron_update', 'WpFastestCachePathSettings', 'backwpup_messages', 'backwpup_cfg_logfolder', 'backwpup_cfg_gzlogs', 'backwpup_cfg_jobrunauthkey', 'backwpup_cfg_dropboxappkey', 'backwpup_cfg_dropboxappsecret', 'backwpup_cfg_dropboxsandboxappkey', 'backwpup_cfg_dropboxsandboxappsecret', 'backwpup_cfg_sugarsynckey', 'backwpup_cfg_sugarsyncsecret', 'backwpup_cfg_sugarsyncappid', 'backwpup_cfg_easycronjobid', 'backwpup_cfg_easycronapikey', 'backwpup_cfg_showfoldersize', 'backwpup_archiveformat', 'backwpup_version', 'backwpup', 'backwpup_jobs', 'backwpup_cfg_jobnotranslate', 'backwpup_cfg_loglevel', 'backwpup_cfg_jobziparchivemethod', 'backwpup_previous_version', 'backwpup_archiveencryption', 'backwpup_cfg_jobmaxexecutiontime', 'backwpup_cfg_jobwaittimems', 'backwpup_cfg_jobdooutput', 'backwpup_cfg_maxlogs', 'backwpup_cfg_mailaddresslog', 'backwpup_cfg_mailerroronly', 'backwpup_cfg_mailaddresssenderlog', 'backwpup_cfg_authentication', 'backwpup_cfg_jobstepretry', 'backwpup_cfg_encryption', 'backwpup_cfg_encryptionkey', 'backwpup_cfg_publickey', 'backwpup_dinotopt_informations_505_notice', 'backwpup_cfg_showadminbar', 'backwpup_cfg_keepplugindata', 'backwpup_cfg_windows', 'backwpup_cfg_httpauthuser', 'backwpup_cfg_httpauthpassword', 'backwpup_mixpanel_optin', 'backwpup_beta_optin', 'backwpup_settings_migration_done', 'backwpup_backup_now_job_id');
DELETE FROM wp_options WHERE option_name IN ('license_product_id', 'license_api_key', 'license_instance_key', 'license_status', 'backwpup_cookies', 'doing_cron', 'backwpup_onedrive_state', 'backwpup_first_backup');
DELETE FROM wp_options WHERE option_name LIKE 'backwpup_cfg_%';
DELETE FROM wp_options WHERE option_name LIKE '%_beta_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_mixpanel_optin';
DELETE FROM wp_options WHERE option_name LIKE 'backwpup_%';
DELETE FROM wp_options WHERE option_name LIKE '%_ftp';
DELETE FROM wp_options WHERE option_name LIKE '%_msazure';
DELETE FROM wp_options WHERE option_name LIKE '%_rsc';
DELETE FROM wp_options WHERE option_name LIKE '%_s3';
DELETE FROM wp_options WHERE option_name LIKE '%_SUGARSYNC';
DELETE FROM wp_options WHERE option_name LIKE 'backwpup_easycron_%';
DELETE FROM wp_options WHERE option_name LIKE 'backwpup_chatbot_context_%';
DELETE FROM wp_options WHERE option_name LIKE '%_trunk_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('backwpup_message_boxes_not_display', 'backwpup_notification_boxes');
DELETE FROM wp_usermeta WHERE meta_key IN ('backwpup_message_boxes_not_display', 'backwpup_notification_boxes');
DELETE FROM wp_termmeta WHERE meta_key IN ('backwpup_message_boxes_not_display', 'backwpup_notification_boxes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('backwpup_message_boxes_not_display', 'backwpup_notification_boxes');

