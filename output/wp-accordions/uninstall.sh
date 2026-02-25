#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_post_edit_rows'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heading_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heading_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heading_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heading_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heading_bgcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heading_bgcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heading_bgcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heading_bgcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_bgcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_bgcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_bgcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_bgcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accordion_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accordion_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accordion_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accordion_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accordion_open_one'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accordion_open_one'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accordion_open_one'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accordion_open_one'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accordion_meta_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accordion_meta_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accordion_meta_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accordion_meta_id'"
