#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classic-editor-replace'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%:elements'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%:document'"
wp option delete 'embedpress_feedback_submited'
wp option delete 'embedpress_analytics_tracking_enabled'
wp option delete 'embedpress_activation_redirect_done'
wp option delete 'enabled_elementor_scripts'
wp option delete 'ep_instagram_feed_data'
wp option delete 'ep_instagram_account_data'
wp option delete 'is_calendly_connected'
wp option delete 'calendly_tokens'
wp option delete 'calendly_user_info'
wp option delete 'calendly_event_types'
wp option delete 'calendly_scheduled_events'
wp option delete 'calendly_invitees_list'
wp option delete 'embedpress_social_dismiss_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%:youtube'"
wp option delete 'epgc_client_secret'
wp option delete 'epgc_cache_time'
wp option delete 'epgc_selected_calendar_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%:global_brand'"
wp option delete 'embedpress_last_popup_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%:vimeo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%:dailymotion'"
wp option delete 'embedpress_hub_banner_dismissed'
wp option delete 'embedpress_hub_popup_dismissed'
wp option delete 'embedpress_main_banner_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%:opensea'"
wp option delete 'embedpress_feature_notice_analytics_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%:spotify'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%:twitch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%:wistia'"
wp option delete 'embedpress_analytics_last_cleanup'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'embedpress_email_reports'
wp option delete 'embedpress_settings'
wp option delete 'embedpress_email_reports_settings'
wp option delete 'embedpress_analytics_db_version'
wp option delete 'wpdeveloper_plugins_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%'"
wp option delete 'wpins_allow_tracking'
wp option delete 'wpins_last_track_time'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpins_block_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hash_key'"
wp option delete 'ep_instagram_hashtag_feed'
wp option delete 'embedpress_pro_software__license_status'
wp option delete 'embedpress_milestone_level'
wp option delete 'is_embedpress_milestone_showing'
wp option delete 'embedpress_milestone_current_level'
wp option delete 'embedpress_milestone_current_trigger'
wp option delete 'embedpress_last_milestone_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'youtube_channel_info_%'"
wp option delete 'epgc_refresh_token'
wp option delete 'epgc_access_token'
wp option delete 'epgc_api_key'
wp option delete 'pgc_public_calendarlist'
wp option delete 'epgc_calendarlist'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'epgc_notices_%'"
wp option delete 'epgc_colorlist'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_embedpress_feedback_dupe_%' OR option_name LIKE '_site_transient_embedpress_feedback_dupe_%'"
wp transient delete 'embedpress_last_mail_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instagram_user_info_%' OR option_name LIKE '_site_transient_instagram_user_info_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instagram_posts_%' OR option_name LIKE '_site_transient_instagram_posts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instagram_user_id_%' OR option_name LIKE '_site_transient_instagram_user_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_instagram_user_data_%' OR option_name LIKE '_site_transient_instagram_user_data_%'"
wp transient delete 'embedpress_total_content_count'
wp transient delete 'embedpress_milestone_notifications'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_calendly_events_list_%' OR option_name LIKE '_site_transient_calendly_events_list_%'"
wp transient delete 'calendly_events_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_calendly_invitee_list_%' OR option_name LIKE '_site_transient_calendly_invitee_list_%'"
wp transient delete 'calendly_invitee_list'
wp transient delete 'embedpress_pro_software__license_data'
wp transient delete 'wpnotice_priority_time_expired'

# Clear Cron Jobs
wp cron event delete 'embedpress_backup_cleanup_action'
wp cron event delete 'embedpress_daily_milestone_check'
wp cron event delete 'embedpress_weekly_analytics_report'
wp cron event delete 'embedpress_monthly_analytics_report'
wp cron event delete 'embedpress_cache_cleanup_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcf-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcf-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcf-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcf-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ep_base_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ep_base_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ep_base_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ep_base_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'hash_key_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'hash_key_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'hash_key_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'hash_key_%'"
