#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide_metabox'
wp option delete 'remove_leading'
wp option delete 'remove_all'
wp option delete 'remove_trailing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mgwe_single_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mgwe_single_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mgwe_single_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mgwe_single_disable'"
