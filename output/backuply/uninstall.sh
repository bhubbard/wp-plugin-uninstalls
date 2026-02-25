#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'backuply_backup_stopped'
wp option delete 'backuply_status'
wp option delete 'backuply_notify_email_address'
wp option delete 'backuply_last_backup'
wp option delete 'backuply_additional_fileindex'
wp option delete 'backuply_pro_version'
wp option delete 'backuply_cron_settings'
wp option delete 'backuply_config_keys'
wp option delete 'backuply_remote_backup_locs'
wp option delete 'backuply_version'
wp option delete 'backuply_settings'
wp option delete 'backuply_license'
wp option delete 'backuply_excludes'
wp option delete 'backuply_debug'
wp option delete 'bcloud_key'
wp option delete 'backuply_cron_schedules'
wp option delete 'backuply_hide_trial'
wp option delete 'backuply_promo_time'
wp option delete 'backuply_last_restore'
wp option delete 'backuply_hide_holiday'
wp option delete 'backuply_black_friday'
wp option delete 'external_updates-backuply-pro'
wp option delete 'backuply_offer_time'
wp option delete 'backuply_backup_nag'
wp option delete 'backuply_license_notice'
wp option delete 'bcloud_trial_time'
wp option delete 'softaculous_plugin_update_notice'
wp option delete 'backuply_litespeed_notice'
wp option delete 'backuply_restore_session_key'
wp option delete 'backuply_sql_repair_log'

# Delete Transients
wp transient delete 'bcloud_data'
wp transient delete 'update_plugins'
wp transient delete 'bcloud_trial_token'

# Clear Cron Jobs
wp cron event delete 'backuply_timeout_check'
wp cron event delete 'backuply_update_quota'
wp cron event delete 'backuply_clean_tmp'
wp cron event delete 'backuply_auto_backup_cron'

