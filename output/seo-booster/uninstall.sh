#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seobooster_google_email'
wp option delete 'seobooster_selected_site'
wp option delete 'sb_gsc_last_refreshed'
wp option delete 'seobooster_access_token'
wp option delete 'seobooster_gsc_sites'
wp option delete 'seobooster_gsc_access_token'
wp option delete 'seobooster_gsc_refresh_token'
wp option delete 'SEOBOOSTER_INSTALLED_DB_VERSION'
wp option delete 'seobooster_weekly_email'
wp option delete 'seobooster_weekly_email_recipient'
wp option delete 'seobooster_internal_linking'
wp option delete 'seobooster_replace_kw_multiple'
wp option delete 'seobooster_replace_kw_limit'
wp option delete 'seobooster_delete_deactivate'
wp option delete 'seobooster_ignorelist'
wp option delete 'seobooster_fof_monitoring'
wp option delete 'sbp_review_notice'
wp option delete 'seobooster_showsearch_queries'
wp option delete 'seobooster_debug_logging'
wp option delete 'seobooster_replace_cat_desc'
wp option delete 'seobooster_woocommerce'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'seobooster_access_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sb2_%' OR option_name LIKE '_site_transient_sb2_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'seobooster_cache_cleanup'
wp cron event delete 'sb_gsc_schedule_all_pages'
wp cron event delete 'seobooster_email_update'
wp cron event delete 'seobooster_gsc_data_fetch'
wp cron event delete 'seobooster_dailymaintenance'
wp cron event delete 'sbp_dailymaintenance'
wp cron event delete 'sbp_crawl_internal'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autodescription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autodescription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autodescription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autodescription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sb_autolink_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sb_autolink_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sb_autolink_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sb_autolink_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sbp-autolink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sbp-autolink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sbp-autolink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sbp-autolink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sbp-appendkeywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sbp-appendkeywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sbp-appendkeywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sbp-appendkeywords'"
