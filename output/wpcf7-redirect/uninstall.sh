#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install'"
wp option delete 'accesibe_scan_results'
wp option delete 'hide_accessibie_menu'
wp option delete 'show_accessibie_menu'
wp option delete 'accesibe_options'
wp option delete 'wpcf7r-extensions-list'
wp option delete 'wpcf7r-extensions-list-updated'
wp option delete 'wpcf_debug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7r_extension-needs-update-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7r_activation_serial-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7r_activation_data-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7r_activation_id-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7r_activation_expiration-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-sku'"
wp option delete 'wpcf7_redirect_install'
wp option delete 'wpcf7r_activation_id'
wp option delete 'wpcf_redirect_options'
wp option delete 'active_sitewide_plugins'
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
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'wpcf7_redirect_version'
wp option delete 'wpcf7_redirect_dismiss_banner'
wp option delete 'wpcf7r_redirect_to_dashboard_flag'

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

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'honeypot_names'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'honeypot_names'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'honeypot_names'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'honeypot_names'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_debug_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_debug_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_debug_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_debug_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_debug_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_debug_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_debug_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_debug_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_debug_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_debug_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_debug_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_debug_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpcf7_redirect_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpcf7_redirect_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpcf7_redirect_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpcf7_redirect_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'action_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'action_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'action_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'action_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7_action_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7_action_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7_action_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7_action_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'action - %'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'action - %'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'action - %'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'action - %'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcf7_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcf7_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcf7_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcf7_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
