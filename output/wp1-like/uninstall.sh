#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp1_like_button_text'
wp option delete 'wp1_like_show_count'
wp option delete 'wp1_like_thumb_icon'
wp option delete 'wp1_like_post_types'
wp option delete 'wp1_like_button_color'
wp option delete 'wp1_like_button_hover_color'
wp option delete 'wp1_like_button_disabled_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp1_like_like'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp1_like_like'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp1_like_like'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp1_like_like'"
