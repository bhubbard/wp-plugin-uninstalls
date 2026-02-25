#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'api'
wp option delete 'key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-address-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-address-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-address-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-address-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-zip-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-zip-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-zip-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-zip-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-city-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-city-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-city-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-city-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-state-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-state-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-state-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-state-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-lng-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-lng-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-lng-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-lng-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-lat-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-lat-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-lat-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-lat-text'"
