#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'edit_flow_calendar_enabled'
wp option delete 'edit_flow_status_dropdown_visible'
wp option delete 'edit_flow_custom_status_default_status'
wp option delete 'edit_flow_dashboard_widgets_enabled'
wp option delete 'edit_flow_post_status_widget_enabled'
wp option delete 'edit_flow_myposts_widget_enabled'
wp option delete 'edit_flow_quickpitch_widget_enabled'
wp option delete 'edit_flow_notifications_enabled'
wp option delete 'edit_flow_always_notify_admin'
wp option delete 'edit_flow_story_budget_enabled'

# Clear Cron Jobs
wp cron event delete 'ef_send_scheduled_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notification_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notification_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notification_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notification_list'"
