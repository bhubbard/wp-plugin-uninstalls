#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eshop_plugin_settings'
wp option delete '_site_transient_update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eshop_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eshop_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eshop_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eshop_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eshop_csv_exp_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eshop_csv_exp_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eshop_csv_exp_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eshop_csv_exp_backup'"
