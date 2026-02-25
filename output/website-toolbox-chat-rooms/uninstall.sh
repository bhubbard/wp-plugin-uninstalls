#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wtbChatRoomPageid'
wp option delete 'wtb_chatroom_username'
wp option delete 'wtb_chatroom_api'
wp option delete 'wtb_chatroom_redirect'
wp option delete 'wtb_chatroom_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_links_chat_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_links_chat_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_links_chat_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_links_chat_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_links_chat_to_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_links_chat_to_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_links_chat_to_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_links_chat_to_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_links_chat_to_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_links_chat_to_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_links_chat_to_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_links_chat_to_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtbchatroom_redirect_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtbchatroom_redirect_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtbchatroom_redirect_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtbchatroom_redirect_active'"
