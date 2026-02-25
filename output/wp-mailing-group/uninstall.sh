#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPMG_SETTINGS'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpmg_status_for_%'"

# Clear Cron Jobs
wp cron event delete 'wpmg_cron_task_send_email'
wp cron event delete 'wpmg_cron_task_parse_email'
wp cron event delete 'wpmg_cron_task_bounced_email'
wp cron event delete 'wpmg_cron_auto_delete_attachments'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'User_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'User_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'User_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'User_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Group_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Group_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Group_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Group_subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Plugin'"
