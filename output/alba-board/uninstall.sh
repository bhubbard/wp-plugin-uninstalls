#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alba_board_limits'
wp option delete 'alba_board_uploads'
wp option delete 'alba_board_notifications'
wp option delete 'alba_delete_on_uninstall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alba_card_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alba_card_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alba_card_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alba_card_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alba_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alba_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alba_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alba_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alba_tag_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alba_tag_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alba_tag_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alba_tag_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alba_tag_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alba_tag_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alba_tag_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alba_tag_text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alba_list_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alba_list_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alba_list_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alba_list_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alba_board_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alba_board_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alba_board_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alba_board_parent'"
