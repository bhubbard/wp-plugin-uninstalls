#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spotiembed_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spotiembed_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spotiembed_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spotiembed_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spotiembed_url'"
