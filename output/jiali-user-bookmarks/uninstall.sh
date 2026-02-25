#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jialiub_singular_label'
wp option delete 'jialiub_plural_label'
wp option delete 'jialiub_action_label'
wp option delete 'jialiub_bookmark_enabled_post_types'
wp option delete 'jialiub_show_label'
wp option delete 'jialiub_show_count'
wp option delete 'jialiub_button_position'
wp option delete 'jialiub_button_color'
wp option delete 'jialiub_button_hover_color'
wp option delete 'jialiub_button_active_color'
wp option delete 'jialiub_font_size'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jialiub_bookmarks_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jialiub_bookmarks_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jialiub_bookmarks_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jialiub_bookmarks_count'"
