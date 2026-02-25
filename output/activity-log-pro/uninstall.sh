#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'actlogpro_premium_settings_reset_notice'
wp option delete 'actlogpro_show_activation_notice'
wp option delete 'actlogpro_admin_menu_location'
wp option delete 'actlogpro_retention_period'
wp option delete 'actlogpro_items_per_page'
wp option delete 'actlogpro_track_user_events'
wp option delete 'actlogpro_track_post_events'
wp option delete 'actlogpro_track_media_events'
wp option delete 'actlogpro_track_comment_events'
wp option delete 'actlogpro_track_plugin_events'
wp option delete 'actlogpro_track_theme_events'
wp option delete 'actlogpro_track_widget_events'
wp option delete 'actlogpro_track_menu_events'
wp option delete 'actlogpro_track_option_events'
wp option delete 'actlogpro_track_wordpress_events'
wp option delete 'actlogpro_track_security_events'
wp option delete 'actlogpro_excluded_option_names'
wp option delete 'actlogpro_excluded_post_types'
wp option delete 'actlogpro_exclude_attachments_for_excluded_posts'
wp option delete 'actlogpro_enable_json_feed'
wp option delete 'actlogpro_enable_rss_feed'
wp option delete 'actlogpro_allow_multiple_expanded_rows'
wp option delete 'actlogpro_store_full_ip'
wp option delete 'actlogpro_login_notification_enabled'
wp option delete 'actlogpro_login_notification_text'
wp option delete 'actlogpro_remove_data_on_uninstall'
wp option delete 'actlogpro_email_digest_enabled'
wp option delete 'actlogpro_email_digest_frequency'
wp option delete 'actlogpro_email_digest_day'
wp option delete 'actlogpro_email_digest_time'
wp option delete 'actlogpro_email_digest_recipients'
wp option delete 'actlogpro_email_digest_last_sent'
wp option delete 'actlogpro_cache_invalidated'
wp option delete 'actlogpro_active_integrations'
wp option delete 'actlogpro_user_deactivated_integrations'
wp option delete 'actlogpro_premium_license_valid'
wp option delete 'actlogpro_license_info'
wp option delete 'actlogpro_last_cleanup_run'
wp option delete 'active_sitewide_plugins'
wp option delete 'actlogpro_db_version'
wp option delete 'actlogpro_wp_version_before_update'
wp option delete 'actlogpro_wp_target_version'
wp option delete 'actlogpro_previous_wp_version'
wp option delete 'actlogpro_target_wp_version'
wp option delete 'actlogpro_feed_token_updated'
wp option delete 'actlogpro_rss_feed_token'
wp option delete 'actlogpro_json_feed_token'
wp option delete 'actlogpro_was_premium_enabled'
wp option delete 'sidebars_widgets'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_actlogpro_user_logout_%' OR option_name LIKE '_site_transient_actlogpro_user_logout_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_actlogpro_theme_data_%' OR option_name LIKE '_site_transient_actlogpro_theme_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_actlogpro_theme_option_updates_%' OR option_name LIKE '_site_transient_actlogpro_theme_option_updates_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_actlogpro_menu_data_%' OR option_name LIKE '_site_transient_actlogpro_menu_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_actlogpro_menu_term_data_%' OR option_name LIKE '_site_transient_actlogpro_menu_term_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_actlogpro_menu_term_direct_%' OR option_name LIKE '_site_transient_actlogpro_menu_term_direct_%'"
wp transient delete 'actlogpro_tracking_settings'
wp transient delete 'update_core'
wp transient delete 'actlogpro_milestone_check_counter'

# Clear Cron Jobs
wp cron event delete 'actlogpro_cleanup_old_logs'
wp cron event delete 'actlogpro_send_email_digest'
wp cron event delete 'actlogpro_log_widget_bulk_summary'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'actlogpro_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'actlogpro_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'actlogpro_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'actlogpro_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'actlogpro_dashboard_widget_chart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'actlogpro_dashboard_widget_chart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'actlogpro_dashboard_widget_chart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'actlogpro_dashboard_widget_chart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'actlogpro_quick_tip_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'actlogpro_quick_tip_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'actlogpro_quick_tip_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'actlogpro_quick_tip_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'actlogpro_stats_view_preference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'actlogpro_stats_view_preference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'actlogpro_stats_view_preference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'actlogpro_stats_view_preference'"
