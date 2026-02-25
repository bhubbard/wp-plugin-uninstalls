#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_jureview_installation_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_jufeedback_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disallow_feedback'"
wp option delete 'wpsol_optimization_settings'
wp option delete 'wpsol_advanced_settings'
wp option delete 'wpsol_db_clean_addon'
wp option delete 'wpsol_configuration'
wp option delete 'wpsol_cdn_integration'
wp option delete 'wpsol_addon_author_max_cdn'
wp option delete 'wpsol_addon_author_key_cdn'
wp option delete 'wpsol_addon_author_cloudflare'
wp option delete 'wpsol_addon_varnish_ip'
wp option delete 'wpsol_ecommerce_detect'
wp option delete 'wpsol_preload_after_saved_setting'
wp option delete 'wpsol_scan_queries'
wp option delete 'wpsol_clean_database_config'
wp option delete 'wpsol_database_cleanup_count_time'
wp option delete 'wpsol_version'
wp option delete 'wpsol_db_version'
wp option delete 'ju_user_token'
wp option delete 'wpsol_exclude_from_defer_css'
wp option delete 'sccss_settings'
wp option delete 'wpsol_loadtime_analysis_lastest'
wp option delete 'wpsol_loadtime_analysis_total'
wp option delete 'wpsol_database_queries_analysis'
wp option delete 'wpsol_profiles_option'
wp option delete 'wpsol_file_group_activation_popup_settings'
wp option delete 'wpsol_addon_exclude_file_lists'
wp option delete 'recently_activated'
wp option delete 'wpsol_woocommerce_speedup'

# Clear Cron Jobs
wp cron event delete 'wpsol_auto_purge_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsol_notice_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsol_notice_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsol_notice_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsol_notice_dismissed_time'"
