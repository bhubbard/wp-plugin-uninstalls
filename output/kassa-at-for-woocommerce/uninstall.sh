#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kaw-subdomain'
wp option delete 'kaw-key'
wp option delete 'kaw-warehouse'
wp option delete 'kaw-message-active'
wp option delete 'kaw-synchronize-at-singleproduct'
wp option delete 'kaw-synchronize-at-cart'
wp option delete 'kaw-synchronize-on-order'
wp option delete 'kaw-logging-size'
wp option delete 'kaw-logging'
wp option delete 'woocommerce_manage_stock'
wp option delete 'logging-info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
