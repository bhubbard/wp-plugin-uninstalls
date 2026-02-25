#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'suf_order_A'
wp option delete 'pre_order_A'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_number'"
