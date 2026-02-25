#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppom_css_output'
wp option delete 'ppom_settings_migration_done'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'ppom_legacy_user'
wp option delete 'personalizedproduct_db_version'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'ppom_demo_meta_installed'
wp option delete 'woocommerce_product_addon_install'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_feature_email_improvements_enabled'
wp option delete 'ppom_pro_license_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
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
wp transient delete 'ppom_meta_imported'
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
wp cron event delete 'do_action_remove_images'
wp cron event delete 'setup_styles_and_scripts_wooproduct'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppom_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppom_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppom_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppom_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
