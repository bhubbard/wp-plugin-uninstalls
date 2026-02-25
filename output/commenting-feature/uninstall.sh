#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf_opt_in'
wp option delete 'cf_hide_editorial_column'
wp option delete 'cf_permissions'
wp option delete 'cf_give_alert_message'
wp option delete 'cf_suggestion_mode_option_name'
wp option delete 'cf_specific_post_categories_values'
wp option delete 'cf_specific_post_types_values'
wp option delete 'cf_hide_floating_icons'
wp option delete 'cf_show_multicollab_sidebar'
wp option delete 'cf_welcome_dashboard_completed_tour'
wp option delete 'cf_admin_notif'
wp option delete 'cf_slack_notification_resolve_comment'
wp option delete 'cf_slack_notification_add_comment'
wp option delete 'cf_slack_notification_add_suggestion'
wp option delete 'cf_slack_notification_accept_reject_suggestion'
wp option delete 'access_token'
wp option delete 'user_access_token'
wp option delete 'channel_id'
wp option delete 'cf_slack_webhook'
wp option delete 'cf_show_infoboard'
wp option delete 'cf_slack_channels'
wp option delete 'cf_disable_checklist'
wp option delete 'cf_disable_suggestion'
wp option delete 'cf_disable_real_time_editing'
wp option delete 'cf_checklist_option_name'
wp option delete 'cf_disable_checklist_publish_button'
wp option delete 'cf_specific_post_types_checklist_values'
wp option delete 'cf_expire_date'
wp option delete 'cf_license_status'
wp option delete 'cf_activated_license_details'

# Delete Transients
wp transient delete 'cf_system_users'
wp transient delete 'gc_users_list'
wp transient delete 'cf_promotional_banner_request_data'
wp transient delete 'cf_promotional_banner_data'

# Clear Cron Jobs
wp cron event delete 'cf_free_plugin_usage_data'
wp cron event delete 'cf_daily_license_checker'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_realtime_collaborators_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_realtime_collaborators_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_realtime_collaborators_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_realtime_collaborators_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sb_suggestion_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sb_suggestion_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sb_suggestion_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sb_suggestion_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'th_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'th_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'th_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'th_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'th%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'th%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'th%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'th%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_current_drafts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_current_drafts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_current_drafts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_current_drafts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'open_cf_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'open_cf_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'open_cf_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'open_cf_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_user_edited'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_user_edited'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_user_edited'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_user_edited'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autodraft_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autodraft_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autodraft_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autodraft_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'open_cf_comment_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'open_cf_comment_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'open_cf_comment_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'open_cf_comment_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_real_time_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_real_time_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_real_time_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_real_time_mode'"
