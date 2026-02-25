-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace', 'embedpress_feedback_submited', 'embedpress_analytics_tracking_enabled', 'embedpress_activation_redirect_done', 'enabled_elementor_scripts', 'ep_instagram_feed_data', 'ep_instagram_account_data', 'is_calendly_connected', 'calendly_tokens', 'calendly_user_info', 'calendly_event_types', 'calendly_scheduled_events', 'calendly_invitees_list', 'embedpress_social_dismiss_notice', 'epgc_client_secret', 'epgc_cache_time', 'epgc_selected_calendar_ids', 'embedpress_last_popup_version', 'embedpress_hub_banner_dismissed', 'embedpress_hub_popup_dismissed', 'embedpress_main_banner_dismissed', 'embedpress_feature_notice_analytics_dismissed', 'embedpress_analytics_last_cleanup', 'embedpress_email_reports', 'embedpress_settings', 'embedpress_email_reports_settings', 'embedpress_analytics_db_version', 'wpdeveloper_plugins_data', 'wpins_allow_tracking', 'wpins_last_track_time', 'active_sitewide_plugins', 'wpins_block_notice', 'ep_instagram_hashtag_feed', 'embedpress_pro_software__license_status', 'embedpress_milestone_level', 'is_embedpress_milestone_showing', 'embedpress_milestone_current_level', 'embedpress_milestone_current_trigger', 'embedpress_last_milestone_version', 'epgc_refresh_token', 'epgc_access_token', 'epgc_api_key', 'pgc_public_calendarlist', 'epgc_calendarlist', 'epgc_colorlist', 'embedpress_last_mail_error', 'embedpress_total_content_count', 'embedpress_milestone_notifications', 'calendly_events_list', 'calendly_invitee_list');
DELETE FROM wp_options WHERE option_name IN ('embedpress_pro_software__license_data', 'wpnotice_priority_time_expired');
DELETE FROM wp_options WHERE option_name LIKE '%:elements';
DELETE FROM wp_options WHERE option_name LIKE '%:document';
DELETE FROM wp_options WHERE option_name LIKE '%:youtube';
DELETE FROM wp_options WHERE option_name LIKE '%:global_brand';
DELETE FROM wp_options WHERE option_name LIKE '%:vimeo';
DELETE FROM wp_options WHERE option_name LIKE '%:dailymotion';
DELETE FROM wp_options WHERE option_name LIKE '%:opensea';
DELETE FROM wp_options WHERE option_name LIKE '%:spotify';
DELETE FROM wp_options WHERE option_name LIKE '%:twitch';
DELETE FROM wp_options WHERE option_name LIKE '%:wistia';
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hash_key';
DELETE FROM wp_options WHERE option_name LIKE 'youtube_channel_info_%';
DELETE FROM wp_options WHERE option_name LIKE 'epgc_notices_%';
DELETE FROM wp_options WHERE option_name LIKE 'embedpress_feedback_dupe_%';
DELETE FROM wp_options WHERE option_name LIKE 'instagram_user_info_%';
DELETE FROM wp_options WHERE option_name LIKE 'instagram_posts_%';
DELETE FROM wp_options WHERE option_name LIKE 'instagram_user_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'instagram_user_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'calendly_events_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'calendly_invitee_list_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', 'first_name', 'last_name', '_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', 'first_name', 'last_name', '_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', 'first_name', 'last_name', '_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', 'first_name', 'last_name', '_elementor_edit_mode');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcf-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcf-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcf-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcf-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ep_base_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ep_base_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ep_base_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ep_base_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'hash_key_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'hash_key_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'hash_key_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'hash_key_%';

