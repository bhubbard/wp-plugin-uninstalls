#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocs_version'
wp option delete 'woocs_alert'
wp option delete 'woocs_auto_switcher_skin'
wp option delete 'woocs_auto_switcher_side'
wp option delete 'woocs_auto_switcher_top_margin'
wp option delete 'woocs_auto_switcher_color'
wp option delete 'woocs_auto_switcher_hover_color'
wp option delete 'woocs_auto_switcher_basic_field'
wp option delete 'woocs_auto_switcher_additional_field'
wp option delete 'woocs_restrike_on_checkout_page'
wp option delete 'woocs_auto_switcher_mobile_show'
wp option delete 'woocs_auto_switcher_show_page'
wp option delete 'woocs_auto_switcher_hide_page'
wp option delete 'woocommerce_tax_display_shop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocs_sd_%'"
wp option delete 'woocs_sd'
wp option delete 'woocs_sd_max'
wp option delete 'woocs_collect_statistic'
wp option delete 'woocs_storage_server'
wp option delete 'woocs_storage_port'
wp option delete 'woocs_storage'
wp option delete 'woocs_shop_is_cached'
wp option delete 'woocs_shop_is_cached_preloader'
wp option delete 'woocs_woo_version'
wp option delete 'woocs_is_geoip_manipulation'
wp option delete 'woocs_is_multiple_allowed'
wp option delete 'woocs_is_fixed_enabled'
wp option delete 'woocs_is_fixed_coupon'
wp option delete 'woocs_is_fixed_shipping'
wp option delete 'woocs_is_fixed_user_role'
wp option delete 'woocs_force_pay_bygeoip_rules'
wp option delete 'woocs_currencies_rate_auto_update'
wp option delete 'woocs_first_activation'
wp option delete 'woocs_drop_down_view'
wp option delete 'woocs_currencies_aggregator'
wp option delete 'woocs_aggregator_key'
wp option delete 'woocs_welcome_currency'
wp option delete 'woocs_show_top_button'
wp option delete 'woocs_activate_page_list'
wp option delete 'woocs_activate_page_list_reverse'
wp option delete 'woocs_show_flags'
wp option delete 'woocs_special_ajax_mode'
wp option delete 'woocs_show_money_signs'
wp option delete 'woocs_customer_signs'
wp option delete 'woocs_customer_price_format'
wp option delete 'woocs_rate_auto_update_email'
wp option delete 'woocs_geo_rules'
wp option delete 'woocs_payments_rule_enabled'
wp option delete 'woocs_payment_control'
wp option delete 'woocs_payments_rules'
wp option delete 'woocs_disable_reset_currency_bots'
wp option delete 'woocs_schema_in_current_currency'
wp option delete 'woocs_hide_cents'
wp option delete 'woocs_hide_on_front'
wp option delete 'woocs_rate_plus'
wp option delete 'woocs_decimals'
wp option delete 'woocs_separators'
wp option delete 'woocs_price_info'
wp option delete 'woocs_no_cents'
wp option delete 'woocs_show_approximate_amount'
wp option delete 'woocs_show_approximate_price'
wp option delete 'woocs_is_auto_switcher'
wp option delete 'woocs'
wp option delete 'woocs_auto_switcher_roll_px'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocs_alert_notice'
wp option delete 'woocs_manage_rate_alert'
wp option delete 'woocommerce_price_thousand_sep'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocs_amount_coupon_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocs_amount_coupon_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocs_amount_coupon_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocs_amount_coupon_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocs_min_spend_coupon_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocs_min_spend_coupon_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocs_min_spend_coupon_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocs_min_spend_coupon_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocs_max_spend_coupon_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocs_max_spend_coupon_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocs_max_spend_coupon_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocs_max_spend_coupon_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocs_regular_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocs_regular_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocs_regular_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocs_regular_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocs_sale_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocs_sale_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocs_sale_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocs_sale_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocs_price_geo_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocs_price_geo_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocs_price_geo_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocs_price_geo_countries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocs_regular_price_geo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocs_regular_price_geo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocs_regular_price_geo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocs_regular_price_geo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocs_sale_price_geo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocs_sale_price_geo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocs_sale_price_geo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocs_sale_price_geo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocs_price_user_role_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocs_price_user_role_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocs_price_user_role_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocs_price_user_role_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocs_regular_price_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocs_regular_price_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocs_regular_price_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocs_regular_price_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocs_sale_price_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocs_sale_price_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocs_sale_price_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocs_sale_price_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_price_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_price_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_price_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_price_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocs_order_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocs_order_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocs_order_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocs_order_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocs_order_base_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocs_order_base_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocs_order_base_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocs_order_base_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocs_order_currency_changed_mannualy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocs_order_currency_changed_mannualy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocs_order_currency_changed_mannualy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocs_order_currency_changed_mannualy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocs_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocs_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocs_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocs_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_discount_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_discount_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_discount_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_discount_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_discount'"
