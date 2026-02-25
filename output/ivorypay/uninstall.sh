#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivorypay_order_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivorypay_order_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivorypay_order_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivorypay_order_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivorypay_order_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivorypay_order_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivorypay_order_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivorypay_order_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_key'"
