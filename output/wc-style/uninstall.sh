#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shop'
wp option delete 'product'
wp option delete 'cart'
wp option delete 'checkout'
wp option delete 'wcsonoff'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcsonoff'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcsonoff'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcsonoff'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcsonoff'"
