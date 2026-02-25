#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emdn_pushem_id'
wp option delete 'emdn_pushem_key'
wp option delete 'emdn_pushem_source'
wp option delete 'emdn_pushem_token'
wp option delete 'emdn_pushem_domain'
wp option delete 'emdn_pushem_subdomain'
wp option delete 'emdn_pushem_googleid'
wp option delete 'emdn_pushem_gcmapi'
wp option delete 'emdn_pushem_type'
wp option delete 'emdn_pushem_mode'
wp option delete 'emdn_pushem_widget_show'

# Clear Cron Jobs
wp cron event delete 'em_desktop_notifications_lite_addon_time_schedule_event_1'
wp cron event delete 'em_desktop_notifications_lite_addon_time_schedule_event_2'
wp cron event delete 'em_desktop_notifications_lite_addon_time_schedule_event_3'
wp cron event delete 'em_desktop_notifications_lite_addon_time_schedule_event_5'
wp cron event delete 'em_desktop_notifications_lite_addon_time_schedule_event_7'
wp cron event delete 'em_desktop_notifications_lite_addon_time_schedule_event_10'
wp cron event delete 'em_desktop_notifications_lite_addon_time_schedule_event_15'
wp cron event delete 'em_desktop_notifications_lite_addon_time_schedule_event_20'
wp cron event delete 'em_desktop_notifications_lite_addon_time_schedule_event_30'
wp cron event delete 'em_desktop_notifications_lite_addon_time_schedule_event_60'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_var'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_var'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_var'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_var'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_var_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_var_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_var_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_var_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_hook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_hook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_hook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_hook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ac_user_con'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ac_user_con'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ac_user_con'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ac_user_con'"
