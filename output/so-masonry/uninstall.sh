#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siteorigin_masonry_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'masonry_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'masonry_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'masonry_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'masonry_settings'"
