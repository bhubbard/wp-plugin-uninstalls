#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'betterlinks_quick_setup'
wp option delete 'betterlinks_quick_setup_step'
wp option delete 'betterlinks_ai_generator_used'
wp option delete 'betterlinks_analytics_data'
wp option delete 'betterlinks_dashboard_notice'
wp option delete 'betterlinks_menu_notice'
wp option delete 'btl_prettylink_migration_should_not_start_in_background'
wp option delete 'betterlinks_hide_notice_ptl_deactive'
wp option delete 'betterlinks_hide_notice_ptl_migrate'
wp option delete '301_redirects'
wp option delete 'betterlinks_notice_s301r_migrate'
wp option delete 'betterlinks_hide_notice_s301r_deactive'
wp option delete 'betterlinks_notice_ta_migrate'
wp option delete 'betterlinkspro_auto_link_create'
wp option delete 'betterlinks_utm_builder_used'
wp option delete '_wpdeveloper_plugin_pointer_priority'
wp option delete 'betterlinks_betterlinks_feb_camp_2026_notice_dismissed'
wp option delete 'betterlinks_notice_ptl_migrate'
wp option delete 'betterlinks_notice_ptl_migration_running_in_background'
wp option delete 'betterlinks_hide_notice_s301r_migrate'
wp option delete 'betterlinks_hide_notice_ta_migrate'
wp option delete 'betterlinks_hide_notice_ta_deactive'
wp option delete 'betterlinks_bulk_generation_status'
wp option delete 'betterlinks_bulk_generation_report'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%'"
wp option delete 'wpins_allow_tracking'
wp option delete 'wpins_last_track_time'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpins_block_notice'
wp option delete 'wpdeveloper_plugins_data'
wp option delete 'betterlinks_links'
wp option delete '301_redirects_wildcard'
wp option delete 'betterlinkspro_broken_links_logs'
wp option delete 'ta_no_follow'
wp option delete 'ta_link_redirect_type'
wp option delete 'ta_pass_query_str'
wp option delete 'betterlinkspro_fullsite_broken_links_logs_cleared'
wp option delete 'betterlinkspro_fullsite_broken_links_logs'
wp option delete 'btl_tags_analytics'
wp option delete 'btl_categories_analytics'

# Delete Transients
wp transient delete 'betterlinks_migration_data_prettylinks'
wp transient delete 'betterlinks_black_friday_pointer_dismissed'
wp transient delete 'betterlinks_import_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'wpnotice_priority_time_expired'

# Clear Cron Jobs
wp cron event delete 'betterlinks/analytics'
wp cron event delete 'betterlinks/write_json_links'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'betterlinks_enable_affiliate_link_disclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'betterlinks_enable_affiliate_link_disclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'betterlinks_enable_affiliate_link_disclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'betterlinks_enable_affiliate_link_disclosure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_betterlinks_custom_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_betterlinks_custom_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_betterlinks_custom_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_betterlinks_custom_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_no_follow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_no_follow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_no_follow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_no_follow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_redirect_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_redirect_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_redirect_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_redirect_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_pass_query_str'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_pass_query_str'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_pass_query_str'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_pass_query_str'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_geolocation_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_geolocation_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_geolocation_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_geolocation_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_link_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_link_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_link_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_link_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_link_expire_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_link_expire_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_link_expire_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_link_expire_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_after_expire_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_after_expire_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_after_expire_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_after_expire_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_autolink_keyword_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_autolink_keyword_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_autolink_keyword_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_autolink_keyword_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_autolink_keyword_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_autolink_keyword_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_autolink_keyword_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_autolink_keyword_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_destination_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_destination_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_destination_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_destination_url'"
