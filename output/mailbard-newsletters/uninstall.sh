#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wysija_import_fields'
wp option delete 'widget_wysija'
wp option delete 'wysijey'
wp option delete 'wysija_log'
wp option delete 'wysija_msg'
wp option delete 'wysija_queries'
wp option delete 'wysija_queries_errors'
wp option delete 'wysicheck'
wp option delete 'wysija_last_scheduled_check'
wp option delete 'wysija_post_type_updated'
wp option delete 'wysija_post_type_created'
wp option delete 'wysija'
wp option delete 'wysija_schedules'
wp option delete 'wysija_last_php_cron_call'
wp option delete 'ms_wysija_bounce_cron'
wp option delete 'ms_wysija_sending_cron'
wp option delete 'wysija_dismiss_update_notice'
wp option delete 'wysija_check_pn'
wp option delete 'wysija_bounce_being_recorded'
wp option delete 'default_post_edit_rows'
wp option delete 'installation_step'
wp option delete 'wysija_reinstall'
wp option delete 'ms_wysija'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ms_%'"
wp option delete 'registration'

# Clear Cron Jobs
wp cron event delete 'wysija_cron_queue'
wp cron event delete 'wysija_cron_bounce'
wp cron event delete 'wysija_cron_daily'
wp cron event delete 'wysija_cron_weekly'
wp cron event delete 'wysija_cron_monthly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wysija_pref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wysija_pref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wysija_pref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wysija_pref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wysija_comment_subscribe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wysija_comment_subscribe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wysija_comment_subscribe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wysija_comment_subscribe'"
