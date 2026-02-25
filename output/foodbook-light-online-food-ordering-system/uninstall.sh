#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'foodbooklite_options'
wp option delete 'woocommerce_currency_pos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_myaccount_page_id'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_delivery_boy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_delivery_boy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_delivery_boy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_delivery_boy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pickup_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pickup_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pickup_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pickup_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_extra_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_extra_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_extra_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_extra_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pre_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pre_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pre_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pre_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tracking_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tracking_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tracking_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tracking_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tracking_status_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tracking_status_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tracking_status_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tracking_status_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foodbooklitedelivery_boy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foodbooklitedelivery_boy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foodbooklitedelivery_boy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foodbooklitedelivery_boy'"
