#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_order_number_start'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'My Field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'My Field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'My Field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'My Field'"
