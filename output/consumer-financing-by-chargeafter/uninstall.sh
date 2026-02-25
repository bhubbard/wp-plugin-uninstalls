#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_chargeafter_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_chargeafter_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_chargeafter_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_chargeafter_%'"
