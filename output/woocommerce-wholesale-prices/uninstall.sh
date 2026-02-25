#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'wwp_roles_allowed_dashboard_access'
wp option delete 'wwp_admin_notice_getting_started_show'
wp option delete 'wwpp_settings_disable_coupons_for_wholesale_users'
wp option delete 'wwp_anonymous_data'
wp option delete 'wwpp_settings_wholesale_price_title_text'
wp option delete 'wwpp_settings_hide_original_price'
wp option delete 'wwpp_settings_explicitly_use_product_regular_price_on_discount_calc_dummy'
wp option delete 'wwpp_hide_wholesale_price_on_product_listing'
wp option delete 'wwp_hide_price_add_to_cart'
wp option delete 'wwp_price_and_add_to_cart_replacement_message'
wp option delete 'wwp_prices_settings_show_wholesale_prices_to_non_wholesale'
wp option delete 'wwp_non_wholesale_show_in_shop'
wp option delete 'wwp_non_wholesale_show_in_products'
wp option delete 'wwp_non_wholesale_show_in_wwof'
wp option delete 'wwp_see_wholesale_prices_replacement_text'
wp option delete 'wwp_price_settings_register_text'
wp option delete 'wwpp_enable_product_cache'
wp option delete 'wwp_admin_notice_new_settings_hide'
wp option delete 'woocommerce_currency'
wp option delete 'wwp_option_activation_code_triggered'
wp option delete 'wwp_option_installed_version'
wp option delete 'wpay_license_key'
wp option delete 'wpay_license_email'
wp option delete 'wwp_installed_by'
wp option delete 'storeagent_installed_by'
wp option delete 'acfw_installed_by'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'wwp_non_wholesale_wholesale_role_select2'
wp option delete 'wwp_activation_date'
wp option delete 'wwp_usage_tracking_config'
wp option delete 'woocommerce_feature_custom_order_tables_enabled'
wp option delete 'active_sitewide_plugins'
wp option delete 'wwp_usage_tracking_last_checkin'
wp option delete 'wwp_tracking_notice'
wp option delete 'wwlc_general_registration_page'
wp option delete 'wwpp_option_wholesale_role_general_discount_mapping'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_price_display_suffix'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'wwpp_settings_regular_price_title_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_roles'"
wp option delete 'wwp_running'

# Delete Transients
wp transient delete 'wwpp_wholesale_prices_meta_transient'
wp transient delete 'wpay_activated_from_wpay_page'

# Clear Cron Jobs
wp cron event delete 'wwp_usage_tracking_cron'
wp cron event delete 'wwp_cron_request_review'
wp cron event delete 'wwp_cron_install_acfwf_notice'
wp cron event delete 'wwp_wc_admin_note_join_store_owner_tips'
wp cron event delete 'wwp_wc_admin_note_wws_bundle'
wp cron event delete 'wwp_wc_admin_note_wws_youtube'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_have_wholesale_price_set_by_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_have_wholesale_price_set_by_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_have_wholesale_price_set_by_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_have_wholesale_price_set_by_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wws_notifications_close'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wws_notifications_close'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wws_notifications_close'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wws_notifications_close'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
