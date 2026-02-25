#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'

# Delete Transients
wp transient delete 'cached_api_data'
wp transient delete 'quote_id'
wp transient delete 'td_api_response'
wp transient delete 'td_sync_api_response'
wp transient delete 'timeout_for_30_min'

# Clear Cron Jobs
wp cron event delete 'td_cron_order_sync'
wp cron event delete 'td_cron_product_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_shipping/namespace/shipping-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_shipping/namespace/shipping-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_shipping/namespace/shipping-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_shipping/namespace/shipping-type'"
