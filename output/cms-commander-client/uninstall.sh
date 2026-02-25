#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmsc_stats_filter'
wp option delete 'cmsc_site_activation_code'
wp option delete '_cmsc_public_key'
wp option delete 'cmsc_worker_brand'
wp option delete 'cmsc_maintenace_mode'
wp option delete '_cmsc_action_message_id'
wp option delete '_cmsc_nossl_key'
wp option delete 'cmsc_debug_enable'
wp option delete 'cmsc_backup_tasks'
wp option delete 'site_url'
wp option delete '_action_message_id'
wp option delete 'cmsc_notifications'
wp option delete 'cmsc_pageview_alerts'
wp option delete 'user_hit_count'
wp option delete 'cmsc_log_md5'
wp option delete 'cmscsettings'
wp option delete 'cmsc_network_admin_install'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_site_transient_%'"
wp option delete 'cmsc_core_autoupdate'
wp option delete 'cmsc_global_plugins_autoupdate'
wp option delete 'cmsc_active_autoupdate_plugins'
wp option delete 'cmsc_global_themes_autoupdate'
wp option delete 'cmsc_active_autoupdate_themes'
wp option delete 'cmsc_global_translations_autoupdate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cmsc_active_autoupdate_%'"

# Clear Cron Jobs
wp cron event delete 'cmsc_backup_tasks'
wp cron event delete 'cmsc_notifications'
wp cron event delete 'cmsc_datasend'

