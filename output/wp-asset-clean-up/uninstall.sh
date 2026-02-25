#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_front_page_no_load'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_front_page_load_exceptions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_global_unload'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bulk_unload'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_post_type_load_exceptions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_front_page_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_critical_css_config'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_usage'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_notice_status'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_license_status'"
wp option delete 'woocommerce_shop_page_id'
wp option delete 'siteground_optimizer_combine_css'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_extras_load_exceptions'"
wp option delete 'wp_rocket_settings'
wp option delete 'classic-editor-replace'
wp option delete 'classic-editor-allow-users'
wp option delete 'sccss_settings'
wp option delete 'autoptimize_css'
wp option delete 'WpFastestCache'
wp option delete 'litespeed-cache-conf'
wp option delete 'breeze_basic_settings'
wp option delete 'breeze_advanced_settings'
wp option delete 'autoptimize_js'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_tracking_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_global_data'"
wp option delete 'wpassetcleanup_global_data'
wp option delete 'perfmatters_extras'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_import_done' OR option_name LIKE '_site_transient_%_import_done'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_active_plugins_icons' OR option_name LIKE '_site_transient_%_active_plugins_icons'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_frontend_assets_manager_just_updated' OR option_name LIKE '_site_transient_%_frontend_assets_manager_just_updated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_all_rules_cleared' OR option_name LIKE '_site_transient_%_all_rules_cleared'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_redirect_after_activation' OR option_name LIKE '_site_transient_%_redirect_after_activation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_settings_updated' OR option_name LIKE '_site_transient_%_settings_updated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_reset_done' OR option_name LIKE '_site_transient_%_reset_done'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_assets_info' OR option_name LIKE '_site_transient_%_assets_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_last_clear_cache' OR option_name LIKE '_site_transient_%_last_clear_cache'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_clear_assets_cache' OR option_name LIKE '_site_transient_%_clear_assets_cache'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_clear_assets_cache_via_link' OR option_name LIKE '_site_transient_%_clear_assets_cache_via_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cache_just_cleared_via_link_dash_area' OR option_name LIKE '_site_transient_%_cache_just_cleared_via_link_dash_area'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_preloads_just_removed' OR option_name LIKE '_site_transient_%_preloads_just_removed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_total_unloaded_assets_all' OR option_name LIKE '_site_transient_%_total_unloaded_assets_all'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_total_unloaded_assets_per_page' OR option_name LIKE '_site_transient_%_total_unloaded_assets_per_page'"

# Clear Cron Jobs
wp cron event delete 'wpacu_daily_scheduled_events'
wp cron event delete 'wpacu_weekly_scheduled_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_load_exceptions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_load_exceptions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_load_exceptions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_load_exceptions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_no_load'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_no_load'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_no_load'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_no_load'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_page_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_page_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_page_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_page_options'"
