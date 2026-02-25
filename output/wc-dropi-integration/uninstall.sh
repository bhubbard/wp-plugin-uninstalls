#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dropi-woocomerce-autosync_orders'
wp option delete 'dropi-woocomerce-create_product_if_no_exist'
wp option delete 'dropi-woocomerce-deactive_cities_and_departments'
wp option delete 'dropi-woocomerce-sync_prods_stock'
wp option delete 'dropi-woocomerce-token'

# Clear Cron Jobs
wp cron event delete 'update_stock_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dropi_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dropi_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dropi_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dropi_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dropi_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dropi_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dropi_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dropi_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dropi_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dropi_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dropi_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dropi_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dropi_token_store'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dropi_token_store'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dropi_token_store'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dropi_token_store'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dropi_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dropi_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dropi_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dropi_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_dropi_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_dropi_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_dropi_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_dropi_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dropi_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dropi_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dropi_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dropi_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_guide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_guide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_guide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_guide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
