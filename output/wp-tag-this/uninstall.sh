#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptagthis_data'
wp option delete 'WPtagthis'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tag_this_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tag_this_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tag_this_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tag_this_votes'"
