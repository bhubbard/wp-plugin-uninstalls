#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'exactmetrics_current_version'
wp option delete 'exactmetrics_notices'
wp option delete 'exactmetrics_wpconsent_notice_dismissed'
wp option delete 'exactmetrics_dismiss_seoboost_cta'
wp option delete 'exactmetrics_dismiss_aiseo_cta'
wp option delete 'fkwcs_wp_stripe'
wp option delete 'fkwcs_con_status'
wp option delete 'exactmetrics_network_tt'
wp option delete 'exactmetrics_site_tt'
wp option delete 'bad_behavior_settings'
wp option delete 'exactmetrics_site_profile'
wp option delete 'exactmetrics_over_time'
wp option delete 'exactmetrics_usage_tracking_config'
wp option delete 'exactmetrics_setup_checklist'
wp option delete 'exactmetrics_last_plugin_error'
wp option delete 'exactmetrics_usage_tracking_last_checkin'
wp option delete 'exactmetrics_tracking_notice'
wp option delete 'exactmetrics_notification_upgrade_to_pro_five_hundred_session_last_added'
wp option delete 'exactmetrics_product_feed_upgrade_notification'
wp option delete 'exactmetrics_review'
wp option delete 'userfeedback_onboarding_complete'
wp option delete 'exactmetrics_last_visited_report_name'
wp option delete 'exactmetrics_last_visited_report_date'
wp option delete 'exactmetrics_sitenotes_installed'
wp option delete 'exactmetrics_db_version'
wp option delete 'exactmetrics_version_upgraded_from'
wp option delete 'exactmetrics_email_summaries_infoblocks_sent'
wp option delete 'exactmetrics_float_bar_hidden'
wp option delete 'exactmetrics_frontend_tracking_notice_viewed'
wp option delete 'exactmetrics_admin_menu_tooltip'
wp option delete 'exactmetrics_network_profile'
wp option delete 'exactmetrics_connect'
wp option delete 'exactmetrics_connect_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'exactmetrics_schema_version_history'
wp option delete 'exactmetrics_migration_log'
wp option delete 'exactmetrics_cache_cleanup_total'
wp option delete 'exactmetrics_cache_cleanup_processed'
wp option delete 'exactmetrics_cache_cleanup_status'
wp option delete 'ta_link_prefix'
wp option delete 'ta_link_prefix_custom'
wp option delete 'cron'
wp option delete 'exactmetrics_report_data_yearinreview'
wp option delete 'exactmetrics_shareasale_id'
wp option delete 'exactmetrics_shareasale_redirect_url'
wp option delete 'prli_onboard'
wp option delete 'exactmetrics_backup_prli_onboard_value'
wp option delete 'wpforms_activation_redirect'
wp option delete 'aioseo_activation_redirect'
wp option delete 'exactmetrics_skip_wizard'
wp option delete 'seed_csp4_settings_content'
wp option delete 'wpmm_settings'
wp option delete 'wp_maintenance_active'
wp option delete 'acx_csma_activation_status'
wp option delete 'sahu_so_dashboard'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable'"
wp option delete 'niteoCS_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'exactmetrics_popular_posts_cache_%'"

# Delete Transients
wp transient delete '_exactmetrics_activation_redirect'
wp transient delete 'exactmetrics_ads_addon_installed_notice_dismissed'
wp transient delete '_userfeedback_activation_redirect'
wp transient delete 'exactmetrics_onboarding_key'
wp transient delete '_exactmetrics_addons'
wp transient delete 'exactmetrics_addons'
wp transient delete 'exactmetrics_popular_posts_ga_data'
wp transient delete 'wpconsent_onboarding_redirect'
wp transient delete 'exactmetrics_google_ads_access_token_data'
wp transient delete 'wpforms_activation_redirect'
wp transient delete 'optin_monster_api_activation_redirect'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'exactmetrics_usage_tracking_cron'
wp cron event delete 'exactmetrics_email_summaries_cron'
wp cron event delete 'exactmetrics_charitable_notice_cron'
wp cron event delete 'exactmetrics_feature_feedback_clear_expired'
wp cron event delete 'exactmetrics_feature_feedback_checkin'
wp cron event delete 'exactmetrics_admin_notifications_update'
wp cron event delete 'exactmetrics_sharedcount_bulk_grab'
wp cron event delete 'exactmetrics_sharedcount_get_more_posts'
wp cron event delete 'exactmetrics_cache_daily_cleanup'
wp cron event delete 'exactmetrics_cleanup_old_cache_batch'
wp cron event delete 'exactmetrics_email_summaries_weekly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exactmetrics_skip_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exactmetrics_skip_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exactmetrics_skip_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exactmetrics_skip_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exactmetrics_included_metrics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exactmetrics_included_metrics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exactmetrics_included_metrics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exactmetrics_included_metrics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exactmetrics_sharedcount_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exactmetrics_sharedcount_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exactmetrics_sharedcount_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exactmetrics_sharedcount_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exactmetrics_sharedcount_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exactmetrics_sharedcount_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exactmetrics_sharedcount_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exactmetrics_sharedcount_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ga4_annotation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ga4_annotation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ga4_annotation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ga4_annotation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exactmetrics_sitenote_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exactmetrics_sitenote_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exactmetrics_sitenote_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exactmetrics_sitenote_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exactmetrics_sitenote_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exactmetrics_sitenote_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exactmetrics_sitenote_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exactmetrics_sitenote_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exactmetrics_sitenote_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exactmetrics_sitenote_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exactmetrics_sitenote_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exactmetrics_sitenote_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exactmetrics_sitenote_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exactmetrics_sitenote_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exactmetrics_sitenote_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exactmetrics_sitenote_id'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exactmetrics_user_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exactmetrics_user_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exactmetrics_user_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exactmetrics_user_preferences'"
