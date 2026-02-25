#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'extra_membership'
wp option delete 'extra_order_meta_keys'
wp option delete 'extra_customer_meta_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nm_ns_pushed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nm_ns_pushed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nm_ns_pushed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nm_ns_pushed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update'"
