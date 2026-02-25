#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_titles'
wp option delete 'section_alignment'
wp option delete 'section_bg_color'
wp option delete 'text_color'
wp option delete 'success_text_color'
wp option delete 'error_text_color'
wp option delete 'alert_font_family'
wp option delete 'alert_font_style'
wp option delete 'alert_font_weight'
wp option delete 'like_bg_color'
wp option delete 'like_color'
wp option delete 'like_loader_color'
wp option delete 'like_loader_border_color'
wp option delete 'dislike_bg_color'
wp option delete 'dislike_color'
wp option delete 'dislike_loader_color'
wp option delete 'dislike_loader_border_color'
wp option delete 'section_padding'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'like'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'like'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'like'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'like'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dislike'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dislike'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dislike'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dislike'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userips'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userips'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userips'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userips'"
