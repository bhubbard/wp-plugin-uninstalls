#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc1c_guid_attributes'
wp option delete 'wc1c_order_attributes'
wp option delete 'wc1c_timestamp_attributes'
wp option delete 'wc1c_currency'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_currency_pos'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc1c_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc1c_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc1c_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc1c_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc1c_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc1c_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc1c_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc1c_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc1c_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc1c_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc1c_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc1c_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc1c_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc1c_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc1c_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc1c_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc1c_contragent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc1c_contragent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc1c_contragent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc1c_contragent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc1c_querying'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc1c_querying'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc1c_querying'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc1c_querying'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc1c_queried'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc1c_queried'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc1c_queried'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc1c_queried'"
