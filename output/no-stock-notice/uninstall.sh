#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'no_stock_label_name'
wp option delete 'no_stock_label_color'
wp option delete 'no_stock_label_bg_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
