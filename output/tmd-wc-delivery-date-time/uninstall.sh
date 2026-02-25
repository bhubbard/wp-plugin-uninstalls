#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmd_dlvrdt_status'
wp option delete 'tmd_off_days'
wp option delete 'tmd_dlvrdt_to'
wp option delete 'tmd_dlvrdt_from'
wp option delete 'woocommerce_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_time'"
