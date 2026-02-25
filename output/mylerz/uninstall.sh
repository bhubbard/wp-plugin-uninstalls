#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_mylerz_settings'
wp option delete 'mylerz_access_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'warehouse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'warehouse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'warehouse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'warehouse'"
