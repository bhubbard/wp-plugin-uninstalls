#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_custom_orders_table_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
