#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_urbangiraffe_rss'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jumpto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jumpto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jumpto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jumpto'"
