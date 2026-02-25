#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_methods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_methods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_methods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_methods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_countries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_countries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zip_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zip_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zip_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zip_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pc_inc_exc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pc_inc_exc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pc_inc_exc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pc_inc_exc'"
