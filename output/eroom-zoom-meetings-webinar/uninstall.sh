#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stm_zoom_settings'
wp option delete 'google_meet_settings'
wp option delete 'microsoft_teams_settings'
wp option delete 'eroom_dismissed_notices'
wp option delete 'eroom_notice_initiated'
wp option delete 'downloaded_font_files'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'eroom_installed'
wp option delete 'stm_wc_product_meeting_ids'
wp option delete 'stm_recurring_meeting_ids'
wp option delete 'stm_zoom_feedback_added'
wp option delete 'stm_eroom_meeting_created'
wp option delete 'eroom_version'
wp option delete 'eroom_db_updates'

# Delete Transients
wp transient delete 'stm_zoom_users'
wp transient delete 'eroom_campaign_notices'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'stm_eroom_global_oauth_data'
wp transient delete 'stm_eroom_api_error'
wp transient delete 'stm_zoom_missing_invitation_scope'
wp transient delete 'stm_eroom-zoom-meetings-webinar_single_notice_setting'
wp transient delete 'stm_eroom-zoom-meetings-webinar_notice_setting'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_zoom_host_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_zoom_host_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_zoom_host_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_zoom_host_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_zoom_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_zoom_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_zoom_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_zoom_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_agenda'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_agenda'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_agenda'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_agenda'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'co_instructor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'co_instructor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'co_instructor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'co_instructor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meeting_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meeting_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meeting_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meeting_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_host'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_host'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_host'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_host'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_select_gm_zoom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_select_gm_zoom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_select_gm_zoom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_select_gm_zoom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_hide_zoom_app_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_hide_zoom_app_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_hide_zoom_app_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_hide_zoom_app_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_waiting_room'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_waiting_room'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_waiting_room'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_waiting_room'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_join_before_host'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_join_before_host'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_join_before_host'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_join_before_host'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_host_join_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_host_join_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_host_join_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_host_join_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_start_after_participants'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_start_after_participants'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_start_after_participants'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_start_after_participants'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_mute_participants'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_mute_participants'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_mute_participants'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_mute_participants'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_enforce_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_enforce_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_enforce_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_enforce_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_alternative_hosts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_alternative_hosts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_alternative_hosts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_alternative_hosts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_daily_repeat_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_daily_repeat_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_daily_repeat_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_daily_repeat_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_weekly_repeat_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_weekly_repeat_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_weekly_repeat_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_weekly_repeat_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_weekly_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_weekly_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_weekly_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_weekly_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_monthly_repeat_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_monthly_repeat_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_monthly_repeat_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_monthly_repeat_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_monthly_occurs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_monthly_occurs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_monthly_occurs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_monthly_occurs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_monthly_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_monthly_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_monthly_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_monthly_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_monthly_week'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_monthly_week'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_monthly_week'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_monthly_week'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_monthly_week_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_monthly_week_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_monthly_week_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_monthly_week_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_end_time_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_end_time_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_end_time_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_end_time_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_end_times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_end_times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_end_times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_end_times'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm_recurring_end_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm_recurring_end_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm_recurring_end_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm_recurring_end_date_time'"
