#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_russian_post_settings'
wp option delete 'multi_packages_type'
wp option delete 'multi_packages_enabled'
wp option delete 'multi_packages_free_shipping'

# Clear Cron Jobs
wp cron event delete 'post_rf_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_russian_post_order_courier_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_russian_post_order_courier_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_russian_post_order_courier_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_russian_post_order_courier_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_russian_post_order_courier_data_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_russian_post_order_courier_data_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_russian_post_order_courier_data_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_russian_post_order_courier_data_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_russian_post_order_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_russian_post_order_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_russian_post_order_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_russian_post_order_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_rf_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_rf_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_rf_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_rf_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_russian_post_order_created_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_russian_post_order_created_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_russian_post_order_created_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_russian_post_order_created_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_russian_post_order_batch_name_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_russian_post_order_batch_name_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_russian_post_order_batch_name_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_russian_post_order_batch_name_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_russian_post_barcode_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_russian_post_barcode_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_russian_post_barcode_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_russian_post_barcode_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_rf_form_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_rf_form_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_rf_form_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_rf_form_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cancel_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cancel_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cancel_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cancel_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'russian_post_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'russian_post_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'russian_post_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'russian_post_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_3pl_stock_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_3pl_stock_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_3pl_stock_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_3pl_stock_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '3pl_reserved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '3pl_reserved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '3pl_reserved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '3pl_reserved'"
