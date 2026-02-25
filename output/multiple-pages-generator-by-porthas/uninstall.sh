#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpg_branding_position'
wp option delete 'mpg_cache_hook_name'
wp option delete 'mpg_cache_hook_priority'
wp option delete 'mpg_legacy_user'
wp option delete 'mpg_database_version'
wp option delete 'wpseo'
wp option delete 'mpg_hook_name'
wp option delete 'mpg_hook_priority'
wp option delete 'mpg_site_basepath'
wp option delete 'mpg_search_settings'
wp option delete 'multi_pages_plugin_premium_license_data'
wp option delete 'multiple_pages_generator_by_porthas_install'
wp option delete 'multi_pages_plugin_premium_install'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
wp option delete 'multi_pages_plugin_logger_flag'
wp option delete 'rank-math-options-titles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_plan'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag'"
wp option delete 'themeisle_sdk_notifications'
wp option delete 'otter_reference_key'
wp option delete 'optimole_reference_key'
wp option delete 'rop_reference_key'
wp option delete 'neve_reference_key'
wp option delete 'hyve_reference_key'
wp option delete 'wp_full_pay_reference_key'
wp option delete 'feedzy_reference_key'
wp option delete 'themeisle_sdk_promotions_otter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_plugin_info_%' OR option_name LIKE '_site_transient_ti_plugin_info_%'"
wp transient delete 'themeisle_sdk_cache_token'
wp transient delete 'themeisle_sdk_feed_items'
wp transient delete 'themeisle_sdk_products'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%act_err' OR option_name LIKE '_site_transient_%act_err'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_data' OR option_name LIKE '_site_transient_%_license_data'"
wp transient delete 'tsk_attachment_count'
wp transient delete 'tsk_posts_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_theme_info_%' OR option_name LIKE '_site_transient_ti_theme_info_%'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_warning_rollback' OR option_name LIKE '_site_transient_%_warning_rollback'"
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_sdk_pause_%' OR option_name LIKE '_site_transient_ti_sdk_pause_%'"

# Clear Cron Jobs
wp cron event delete 'mpg_sitemap_check'
wp cron event delete 'mpg_schedule_execution'
wp cron event delete 'schedule_execution'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpg_dismiss_subscribe_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpg_dismiss_subscribe_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpg_dismiss_subscribe_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpg_dismiss_subscribe_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
