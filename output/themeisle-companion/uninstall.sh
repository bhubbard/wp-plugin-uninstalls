#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'obfx_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'obfx_beta_show_%'"
wp option delete 'themeisle_companion_install'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_exp'"
wp option delete 'obfx_new_user'
wp option delete 'hestia_fix_duplicate_widgets'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'fresh_site'
wp option delete 'theme_mods_zerif-pro'
wp option delete 'theme_mods_zerif-lite'
wp option delete 'widget_ctup-ads-widget'
wp option delete 'widget_zerif_testim-widget'
wp option delete 'widget_zerif_team-widget'
wp option delete 'widget_color-picker'
wp option delete 'widget_zerif_clients-widget'
wp option delete 'shop_isle_wporg_flag'
wp option delete 'themeisle_companion_flag'
wp option delete 'theme_mods_shop-isle'
wp option delete 'woo_best_products'
wp option delete 'woo_featured_products'
wp option delete 'woo_popular_products'
wp option delete 'woo_product_categories'
wp option delete 'woo_recent_products'
wp option delete 'woo_sale_products'
wp option delete 'widget_recent_entries_plus'
wp option delete 'widget_recent_entries'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
wp option delete 'obfx_token'
wp option delete 'obfx_google_accounts_tracking_codes'
wp option delete 'woocommerce_shop_page_id'
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

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_plugin_info_%' OR option_name LIKE '_site_transient_ti_plugin_info_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_pages' OR option_name LIKE '_site_transient_%_pages'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'obfx_ignore_visit_dashboard_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'obfx_ignore_visit_dashboard_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'obfx_ignore_visit_dashboard_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'obfx_ignore_visit_dashboard_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shop_isle_page_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shop_isle_page_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shop_isle_page_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shop_isle_page_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'obfx-header-scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'obfx-header-scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'obfx-header-scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'obfx-header-scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'obfx-footer-scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'obfx-footer-scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'obfx-footer-scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'obfx-footer-scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'obfx_menu_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'obfx_menu_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'obfx_menu_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'obfx_menu_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
