#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'backwpup_onboarding'
wp option delete 'backwpup_cfg_hash'
wp option delete 'backwpup_activation_time'
wp option delete 'backwpup_easycron_update'
wp option delete 'WpFastestCachePathSettings'
wp option delete 'backwpup_messages'
wp option delete 'backwpup_cfg_logfolder'
wp option delete 'backwpup_cfg_gzlogs'
wp option delete 'backwpup_cfg_jobrunauthkey'
wp option delete 'backwpup_cfg_dropboxappkey'
wp option delete 'backwpup_cfg_dropboxappsecret'
wp option delete 'backwpup_cfg_dropboxsandboxappkey'
wp option delete 'backwpup_cfg_dropboxsandboxappsecret'
wp option delete 'backwpup_cfg_sugarsynckey'
wp option delete 'backwpup_cfg_sugarsyncsecret'
wp option delete 'backwpup_cfg_sugarsyncappid'
wp option delete 'backwpup_cfg_easycronjobid'
wp option delete 'backwpup_cfg_easycronapikey'
wp option delete 'backwpup_cfg_showfoldersize'
wp option delete 'backwpup_archiveformat'
wp option delete 'backwpup_version'
wp option delete 'backwpup'
wp option delete 'backwpup_jobs'
wp option delete 'backwpup_cfg_jobnotranslate'
wp option delete 'backwpup_cfg_loglevel'
wp option delete 'backwpup_cfg_jobziparchivemethod'
wp option delete 'backwpup_previous_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'backwpup_cfg_%'"
wp option delete 'backwpup_archiveencryption'
wp option delete 'backwpup_cfg_jobmaxexecutiontime'
wp option delete 'backwpup_cfg_jobwaittimems'
wp option delete 'backwpup_cfg_jobdooutput'
wp option delete 'backwpup_cfg_maxlogs'
wp option delete 'backwpup_cfg_mailaddresslog'
wp option delete 'backwpup_cfg_mailerroronly'
wp option delete 'backwpup_cfg_mailaddresssenderlog'
wp option delete 'backwpup_cfg_authentication'
wp option delete 'backwpup_cfg_jobstepretry'
wp option delete 'backwpup_cfg_encryption'
wp option delete 'backwpup_cfg_encryptionkey'
wp option delete 'backwpup_cfg_publickey'
wp option delete 'backwpup_dinotopt_informations_505_notice'
wp option delete 'backwpup_cfg_showadminbar'
wp option delete 'backwpup_cfg_keepplugindata'
wp option delete 'backwpup_cfg_windows'
wp option delete 'backwpup_cfg_httpauthuser'
wp option delete 'backwpup_cfg_httpauthpassword'
wp option delete 'backwpup_mixpanel_optin'
wp option delete 'backwpup_beta_optin'
wp option delete 'backwpup_settings_migration_done'
wp option delete 'backwpup_backup_now_job_id'
wp option delete 'license_product_id'
wp option delete 'license_api_key'
wp option delete 'license_instance_key'
wp option delete 'license_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_beta_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_mixpanel_optin'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_backwpup_%' OR option_name LIKE '_site_transient_backwpup_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_ftp' OR option_name LIKE '_site_transient_%_ftp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_msazure' OR option_name LIKE '_site_transient_%_msazure'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_rsc' OR option_name LIKE '_site_transient_%_rsc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_s3' OR option_name LIKE '_site_transient_%_s3'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_SUGARSYNC' OR option_name LIKE '_site_transient_%_SUGARSYNC'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_backwpup_easycron_%' OR option_name LIKE '_site_transient_backwpup_easycron_%'"
wp transient delete 'backwpup_cookies'
wp transient delete 'doing_cron'
wp transient delete 'backwpup_onedrive_state'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_backwpup_chatbot_context_%' OR option_name LIKE '_site_transient_backwpup_chatbot_context_%'"
wp transient delete 'backwpup_first_backup'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_trunk_version' OR option_name LIKE '_site_transient_%_trunk_version'"

# Clear Cron Jobs
wp cron event delete 'backwpup_cron'
wp cron event delete 'backwpup_check_cleanup'
wp cron event delete 'wp_update_plugins'
wp cron event delete 'wp_version_check'
wp cron event delete 'wp_update_themes'
wp cron event delete 'wp_scheduled_delete'
wp cron event delete 'backwpup_rsc_delete_segment_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'backwpup_message_boxes_not_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'backwpup_message_boxes_not_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'backwpup_message_boxes_not_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'backwpup_message_boxes_not_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'backwpup_notification_boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'backwpup_notification_boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'backwpup_notification_boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'backwpup_notification_boxes'"
