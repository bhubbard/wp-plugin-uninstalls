#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_custom_orders_table_data_sync_is_enabled'
wp option delete 'woocommerce_order_number_start'
wp option delete 'woocommerce_order_number_prefix'
wp option delete 'woocommerce_order_number_suffix'
wp option delete 'w2ssyn_sync_config'
wp option delete 'w2ssyn_last_sync_time'
wp option delete 'w2ssyn_shopify_store_name'
wp option delete 'w2ssyn_shopify_access_token'
wp option delete 'w2ssyn_consumer_key'
wp option delete 'w2ssyn_consumer_secret'
wp option delete 'w2ssyn_custom_fields_mapping'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'swi_sync_event'
wp cron event delete 'swi_custom_sync_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_isbn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_isbn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_isbn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_isbn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_barcode'"
