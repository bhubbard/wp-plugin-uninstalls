-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('actlogpro_premium_settings_reset_notice', 'actlogpro_show_activation_notice', 'actlogpro_admin_menu_location', 'actlogpro_retention_period', 'actlogpro_items_per_page', 'actlogpro_track_user_events', 'actlogpro_track_post_events', 'actlogpro_track_media_events', 'actlogpro_track_comment_events', 'actlogpro_track_plugin_events', 'actlogpro_track_theme_events', 'actlogpro_track_widget_events', 'actlogpro_track_menu_events', 'actlogpro_track_option_events', 'actlogpro_track_wordpress_events', 'actlogpro_track_security_events', 'actlogpro_excluded_option_names', 'actlogpro_excluded_post_types', 'actlogpro_exclude_attachments_for_excluded_posts', 'actlogpro_enable_json_feed', 'actlogpro_enable_rss_feed', 'actlogpro_allow_multiple_expanded_rows', 'actlogpro_store_full_ip', 'actlogpro_login_notification_enabled', 'actlogpro_login_notification_text', 'actlogpro_remove_data_on_uninstall', 'actlogpro_email_digest_enabled', 'actlogpro_email_digest_frequency', 'actlogpro_email_digest_day', 'actlogpro_email_digest_time', 'actlogpro_email_digest_recipients', 'actlogpro_email_digest_last_sent', 'actlogpro_cache_invalidated', 'actlogpro_active_integrations', 'actlogpro_user_deactivated_integrations', 'actlogpro_premium_license_valid', 'actlogpro_license_info', 'actlogpro_last_cleanup_run', 'active_sitewide_plugins', 'actlogpro_db_version', 'actlogpro_wp_version_before_update', 'actlogpro_wp_target_version', 'actlogpro_previous_wp_version', 'actlogpro_target_wp_version', 'actlogpro_feed_token_updated', 'actlogpro_rss_feed_token', 'actlogpro_json_feed_token', 'actlogpro_was_premium_enabled', 'sidebars_widgets', 'actlogpro_tracking_settings');
DELETE FROM wp_options WHERE option_name IN ('update_core', 'actlogpro_milestone_check_counter');
DELETE FROM wp_options WHERE option_name LIKE 'actlogpro_user_logout_%';
DELETE FROM wp_options WHERE option_name LIKE 'actlogpro_theme_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'actlogpro_theme_option_updates_%';
DELETE FROM wp_options WHERE option_name LIKE 'actlogpro_menu_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'actlogpro_menu_term_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'actlogpro_menu_term_direct_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('actlogpro_dismissed_notices', 'actlogpro_dashboard_widget_chart', 'actlogpro_quick_tip_index', 'actlogpro_stats_view_preference');
DELETE FROM wp_usermeta WHERE meta_key IN ('actlogpro_dismissed_notices', 'actlogpro_dashboard_widget_chart', 'actlogpro_quick_tip_index', 'actlogpro_stats_view_preference');
DELETE FROM wp_termmeta WHERE meta_key IN ('actlogpro_dismissed_notices', 'actlogpro_dashboard_widget_chart', 'actlogpro_quick_tip_index', 'actlogpro_stats_view_preference');
DELETE FROM wp_commentmeta WHERE meta_key IN ('actlogpro_dismissed_notices', 'actlogpro_dashboard_widget_chart', 'actlogpro_quick_tip_index', 'actlogpro_stats_view_preference');

