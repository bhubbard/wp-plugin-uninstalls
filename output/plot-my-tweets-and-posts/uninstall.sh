#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pmpat_options'
wp option delete 'pmpat_hash'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show'"
