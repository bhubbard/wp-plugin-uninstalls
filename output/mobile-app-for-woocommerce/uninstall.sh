#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_preorders_cart_product_text'
wp option delete 'default_product_cat'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_stock_format'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'reward_single_page_product'
wp option delete 'reward_cart_product_meta'
wp option delete 'reward_checkout_product_meta'
wp option delete 'reward_points_global'
wp option delete 'mycred_point_type'
wp option delete 'reward_points_global_type'
wp option delete 'reward_points_exchange_rate'
wp option delete 'reward_points_global_message'
wp option delete 'reward_points_global_type_val'
wp option delete 'reward_cart_product_total'
wp option delete 'reward_checkout_product_total'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'ywpar_points_round_type'

# Delete Transients
wp transient delete 'shopapper_app_id'

# Clear Cron Jobs
wp cron event delete 'shopapper_hourly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'registered_by_shopapper'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'registered_by_shopapper'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'registered_by_shopapper'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'registered_by_shopapper'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pre_order_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pre_order_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pre_order_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pre_order_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopapper_only_app'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopapper_only_app'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopapper_only_app'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopapper_only_app'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopapper_hide_web'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopapper_hide_web'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopapper_hide_web'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopapper_hide_web'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopapper_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopapper_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopapper_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopapper_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopapper_wc_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopapper_wc_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopapper_wc_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopapper_wc_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_subscriber_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_subscriber_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_subscriber_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_subscriber_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
