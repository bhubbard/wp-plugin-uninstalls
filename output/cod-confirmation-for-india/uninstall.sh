#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Order Failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Order Failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Order Failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Order Failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Order Confirm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Order Confirm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Order Confirm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Order Confirm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Order Cancelled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Order Cancelled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Order Cancelled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Order Cancelled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Contact to Customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Contact to Customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Contact to Customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Contact to Customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Customer called'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Customer called'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Customer called'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Customer called'"
