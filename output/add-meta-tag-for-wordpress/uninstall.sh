#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable_tag'
wp option delete 'enable_page_tag'
wp option delete 'enable_post_tag'
wp option delete 'enable_og'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'add_meta_tag_for_wordpress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'add_meta_tag_for_wordpress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'add_meta_tag_for_wordpress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'add_meta_tag_for_wordpress'"
