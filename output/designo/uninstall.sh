#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'designo_plugin_token_error'
wp transient delete 'designo_plugin_success'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
