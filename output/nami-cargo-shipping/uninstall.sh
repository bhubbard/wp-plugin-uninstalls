#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nami_real_token_backup'
wp option delete 'nami_order_type'
wp option delete 'nami_inner_shipping_time'
wp option delete 'nami_preparation_time'
wp option delete 'nami_multi_shipping'
wp option delete 'nami_include_price'
wp option delete 'nami_warehouses_sync'
wp option delete 'nami_inter_warehouse'
wp option delete 'nami_generated_hash_code'
wp option delete 'nami_generated_order_id'

# Delete Transients
wp transient delete 'nami_real_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'warehouse_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'warehouse_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'warehouse_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'warehouse_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nami_warehouse_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nami_warehouse_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nami_warehouse_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nami_warehouse_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nami_warehouse_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nami_warehouse_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nami_warehouse_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nami_warehouse_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nami_generated_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nami_generated_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nami_generated_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nami_generated_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_warehouse_stock_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_warehouse_stock_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_warehouse_stock_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_warehouse_stock_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_warehouse_stock_updates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_warehouse_stock_updates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_warehouse_stock_updates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_warehouse_stock_updates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'successful_order_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'successful_order_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'successful_order_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'successful_order_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nami_warehouse_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nami_warehouse_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nami_warehouse_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nami_warehouse_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nami_warehouse_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nami_warehouse_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nami_warehouse_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nami_warehouse_zip'"
