#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cme_custom_status_control'
wp option delete 'rvy_use_publishpress_notifications'
wp option delete 'publishpress_calendar_enabled'
wp option delete 'publishpress_content_overview_enabled'
wp option delete 'publishpress_dashboard_widgets_enabled'
wp option delete 'publishpress_post_status_widget_enabled'
wp option delete 'publishpress_myposts_widget_enabled'
wp option delete 'publishpress_quickpitch_widget_enabled'
wp option delete 'edit_flow_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edit_flow_%'"
wp option delete 'edit_flow_editorial_metadata_options'
wp option delete 'publishpress_notifications_enabled'
wp option delete 'publishpress_always_notify_admin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp option delete 'classic-editor-replace'
wp option delete 'pp_planner_activated'
wp option delete 'publishpress_improved_notifications_options'
wp option delete 'publishpress_custom_status_options'

# Clear Cron Jobs
wp cron event delete 'pp_send_scheduled_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_editorial_comment_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_editorial_comment_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_editorial_comment_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_editorial_comment_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'psppno_workflow_channel_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'psppno_workflow_channel_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'psppno_workflow_channel_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'psppno_workflow_channel_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psp_default_workflow_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psp_default_workflow_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psp_default_workflow_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psp_default_workflow_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psppno_touser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psppno_touser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psppno_touser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psppno_touser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psppno_touserlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psppno_touserlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psppno_touserlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psppno_touserlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psppno_togroup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psppno_togroup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psppno_togroup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psppno_togroup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psppno_togrouplist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psppno_togrouplist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psppno_togrouplist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psppno_togrouplist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'logs_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'logs_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'logs_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'logs_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventDuration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventDuration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventDuration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventDuration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventEndDateUTC'"
