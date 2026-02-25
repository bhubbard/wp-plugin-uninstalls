#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordpress_api_key'
wp option delete 'akismet_discard_month'
wp option delete 'akismet_show_user_comments_approved'
wp option delete 'akismet_connectivity_time'
wp option delete 'akismet_spam_count'
wp option delete 'akismet_alert_code'
wp option delete 'akismet_alert_msg'
wp option delete 'akismet_available_servers'
wp option delete 'jc_setting'
wp option delete 'jotform_options'
wp option delete 'jc_option_from_ajax'
wp option delete 'dx_option_from_ajax'

# Clear Cron Jobs
wp cron event delete 'akismet_schedule_cron_recheck'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_user_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_user_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_user_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_user_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_as_submitted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_as_submitted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_as_submitted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_as_submitted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_rechecking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_rechecking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_rechecking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_rechecking'"
