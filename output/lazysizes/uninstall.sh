#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lazysizes_general'
wp option delete 'lazysizes_effects'
wp option delete 'lazysizes_addons'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lazysizes_%'"
wp option delete 'lazysizes_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lazysizes_blurhash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lazysizes_blurhash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lazysizes_blurhash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lazysizes_blurhash'"
