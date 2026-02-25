#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_coupons'
wp option delete 'xt_woopr_points_expire_points_since'
wp option delete 'xt_woopr_install_offset'
wp option delete 'xt_woopr_points_label'
wp option delete 'xt_woopr_order_message'
wp option delete 'xt_woopr_order_admin_email_message'
wp option delete 'xt_woopr_order_customer_email_message'
wp option delete 'xt_woopr_partial_redemption_enabled'
wp option delete 'xt_woopr_points_tax_application'
wp option delete 'xt_woopr_cart_min_discount'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'xt_woopr_cart_max_discount'
wp option delete 'xt_woopr_earn_points_ratio'
wp option delete 'xt_woopr_redeem_points_ratio'
wp option delete 'xt_woopr_earn_points_rounding'
wp option delete 'xt_woopr_single_product_message'
wp option delete 'xt_woopr_variable_product_message'
wp option delete 'xt_woopr_endpoint'
wp option delete 'xt_framework_system_info'
wp option delete 'xirki_telemetry_optin'
wp option delete 'xirki_telemetry_sent'
wp option delete 'xirki_telemetry_no_consent'
wp option delete 'xirki_font_local_filenames'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'xtfw_active_plugins'
wp option delete 'woocommerce_enable_ajax_add_to_cart'

# Delete Transients
wp transient delete 'xt_framework_system_info_templates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version_data' OR option_name LIKE '_site_transient_%_version_data'"
wp transient delete 'xirki_googlefonts_cache'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'xt_woopr_expire_points_daily'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xt_woopr_points_earned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xt_woopr_points_earned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xt_woopr_points_earned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xt_woopr_points_earned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xt_woopr_points_max_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xt_woopr_points_max_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xt_woopr_points_max_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xt_woopr_points_max_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xt_woopr_points_renewal_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xt_woopr_points_renewal_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xt_woopr_points_renewal_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xt_woopr_points_renewal_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xt_woopr_points_include_bundled_product_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xt_woopr_points_include_bundled_product_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xt_woopr_points_include_bundled_product_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xt_woopr_points_include_bundled_product_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xt_woopr_max_points_earned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xt_woopr_max_points_earned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xt_woopr_max_points_earned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xt_woopr_max_points_earned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xt_woopr_min_points_earned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xt_woopr_min_points_earned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xt_woopr_min_points_earned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xt_woopr_min_points_earned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xt_woopr_balance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xt_woopr_balance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xt_woopr_balance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xt_woopr_balance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xt_woopr_points_modifier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xt_woopr_points_modifier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xt_woopr_points_modifier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xt_woopr_points_modifier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcgp_given_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcgp_given_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcgp_given_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcgp_given_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xt_woopr_points_redeemed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xt_woopr_points_redeemed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xt_woopr_points_redeemed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xt_woopr_points_redeemed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xt_woopr_points_logged_redemption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xt_woopr_points_logged_redemption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xt_woopr_points_logged_redemption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xt_woopr_points_logged_redemption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pricing_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pricing_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pricing_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pricing_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xirki_fa_nag_dismissed'"
