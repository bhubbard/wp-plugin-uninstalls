#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tracknow_for_woocommerce_debug_logs'
wp option delete 'tracknow_logs_table_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracknow_click_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracknow_click_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracknow_click_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracknow_click_id'"
