#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'mapy_cz_api_key'
wp option delete 'wpify_logs_max_files'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ecomail_subscribe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ecomail_subscribe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ecomail_subscribe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ecomail_subscribe'"
