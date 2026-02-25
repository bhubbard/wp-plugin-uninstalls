#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'monsterinsights_current_version'
wp option delete 'monsterinsights_notices'
wp option delete 'monsterinsights_wpconsent_notice_dismissed'
wp option delete 'monsterinsights_dismiss_seoboost_cta'
wp option delete 'monsterinsights_dismiss_aiseo_cta'
wp option delete 'fkwcs_wp_stripe'
wp option delete 'fkwcs_con_status'
wp option delete 'monsterinsights_network_tt'
wp option delete 'monsterinsights_site_tt'
wp option delete 'bad_behavior_settings'
wp option delete 'monsterinsights_site_profile'
wp option delete 'monsterinsights_over_time'
wp option delete 'monsterinsights_usage_tracking_config'
wp option delete 'monsterinsights_setup_checklist'
wp option delete 'monsterinsights_last_plugin_error'
wp option delete 'monsterinsights_usage_tracking_last_checkin'
wp option delete 'monsterinsights_tracking_notice'
wp option delete 'monsterinsights_notification_upgrade_to_pro_five_hundred_session_last_added'
wp option delete 'monsterinsights_product_feed_upgrade_notification'
wp option delete 'monsterinsights_review'
wp option delete 'userfeedback_onboarding_complete'
wp option delete 'monsterinsights_last_visited_report_name'
wp option delete 'monsterinsights_last_visited_report_date'
wp option delete 'monsterinsights_sitenotes_installed'
wp option delete 'monsterinsights_db_version'
wp option delete 'monsterinsights_version_upgraded_from'
wp option delete 'monsterinsights_email_summaries_infoblocks_sent'
wp option delete 'monsterinsights_float_bar_hidden'
wp option delete 'monsterinsights_frontend_tracking_notice_viewed'
wp option delete 'monsterinsights_admin_menu_tooltip'
wp option delete 'monsterinsights_network_profile'
wp option delete 'monsterinsights_connect'
wp option delete 'monsterinsights_connect_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'monsterinsights_schema_version_history'
wp option delete 'monsterinsights_migration_log'
wp option delete 'monsterinsights_cache_cleanup_total'
wp option delete 'monsterinsights_cache_cleanup_processed'
wp option delete 'monsterinsights_cache_cleanup_status'
wp option delete 'monsterinsights_shareasale_id'
wp option delete 'monsterinsights_shareasale_redirect_url'
wp option delete 'prli_onboard'
wp option delete 'monsterinsights_backup_prli_onboard_value'
wp option delete 'yst_ga'
wp option delete 'yoast-ga-access_token'
wp option delete 'yoast-ga-refresh_token'
wp option delete 'yst_ga_api'
wp option delete 'ta_link_prefix'
wp option delete 'ta_link_prefix_custom'
wp option delete 'monsterinsights_license'
wp option delete 'monsterinsights_network_license_updates'
wp option delete 'monsterinsights_license_updates'
wp option delete 'monsterinsights_network_license'
wp option delete 'monsterinsights_tracking_last_send'
wp option delete 'mi_tracking_last_send'
wp option delete 'monsterinsights_settings_version'
wp option delete 'cron'
wp option delete 'monsterinsights_report_data_yearinreview'
wp option delete 'wpforms_activation_redirect'
wp option delete 'aioseo_activation_redirect'
wp option delete 'monsterinsights_skip_wizard'
wp option delete 'seed_csp4_settings_content'
wp option delete 'wpmm_settings'
wp option delete 'wp_maintenance_active'
wp option delete 'acx_csma_activation_status'
wp option delete 'sahu_so_dashboard'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable'"
wp option delete 'niteoCS_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'monsterinsights_popular_posts_cache_%'"

# Delete Transients
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete 'monsterinsights_ads_addon_installed_notice_dismissed'
wp transient delete '_userfeedback_activation_redirect'
wp transient delete 'monsterinsights_onboarding_key'
wp transient delete '_monsterinsights_addons'
wp transient delete 'monsterinsights_addons'
wp transient delete 'wpconsent_onboarding_redirect'
wp transient delete 'monsterinsights_popular_posts_ga_data'
wp transient delete 'monsterinsights_google_ads_access_token_data'
wp transient delete 'wpforms_activation_redirect'
wp transient delete 'optin_monster_api_activation_redirect'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'monsterinsights_usage_tracking_cron'
wp cron event delete 'monsterinsights_email_summaries_cron'
wp cron event delete 'monsterinsights_charitable_notice_cron'
wp cron event delete 'monsterinsights_feature_feedback_clear_expired'
wp cron event delete 'monsterinsights_feature_feedback_checkin'
wp cron event delete 'monsterinsights_admin_notifications_update'
wp cron event delete 'monsterinsights_sharedcount_bulk_grab'
wp cron event delete 'monsterinsights_sharedcount_get_more_posts'
wp cron event delete 'monsterinsights_cache_daily_cleanup'
wp cron event delete 'monsterinsights_cleanup_old_cache_batch'
wp cron event delete 'yst_ga_aggregate_data'
wp cron event delete 'monsterinsights_daily_cron'
wp cron event delete 'monsterinsights_send_tracking_data'
wp cron event delete 'monsterinsights_send_tracking_checkin'
wp cron event delete 'monsterinsights_weekly_cron'
wp cron event delete 'monsterinsights_email_summaries_weekly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monsterinsights_skip_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monsterinsights_skip_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monsterinsights_skip_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monsterinsights_skip_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'monsterinsights_included_metrics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'monsterinsights_included_metrics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'monsterinsights_included_metrics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'monsterinsights_included_metrics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monsterinsights_sharedcount_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monsterinsights_sharedcount_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monsterinsights_sharedcount_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monsterinsights_sharedcount_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monsterinsights_sharedcount_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monsterinsights_sharedcount_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monsterinsights_sharedcount_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monsterinsights_sharedcount_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ga4_annotation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ga4_annotation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ga4_annotation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ga4_annotation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monsterinsights_sitenote_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monsterinsights_sitenote_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monsterinsights_sitenote_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monsterinsights_sitenote_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monsterinsights_sitenote_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monsterinsights_sitenote_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monsterinsights_sitenote_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monsterinsights_sitenote_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monsterinsights_sitenote_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monsterinsights_sitenote_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monsterinsights_sitenote_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monsterinsights_sitenote_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monsterinsights_sitenote_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monsterinsights_sitenote_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monsterinsights_sitenote_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monsterinsights_sitenote_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'medias'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'medias'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'medias'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'medias'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'important'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'important'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'important'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'important'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_gau_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_gau_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_gau_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_gau_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mepr-address-zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mepr-address-zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mepr-address-zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mepr-address-zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mepr-address-city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mepr-address-city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mepr-address-city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mepr-address-city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mepr-address-state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mepr-address-state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mepr-address-state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mepr-address-state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mepr-address-country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mepr-address-country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mepr-address-country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mepr-address-country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'monsterinsights_user_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'monsterinsights_user_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'monsterinsights_user_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'monsterinsights_user_preferences'"
