#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autotag_tag_posts'
wp option delete 'autotag_tag_pages'
wp option delete 'autotag_number'
wp option delete 'autotag_remove_tags'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_auto_tag_removed_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_auto_tag_removed_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_auto_tag_removed_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_auto_tag_removed_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_auto_tag_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_auto_tag_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_auto_tag_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_auto_tag_disabled'"
