#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsn_global_cities'
wp option delete 'wsn_global_neighborhoods'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_teste'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_teste'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_teste'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_teste'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shiping_teste'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shiping_teste'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shiping_teste'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shiping_teste'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_neighborhood'"
