#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bluesky_identifier'
wp option delete 'bluesky_password'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bluesky_shared'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bluesky_shared'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bluesky_shared'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bluesky_shared'"
