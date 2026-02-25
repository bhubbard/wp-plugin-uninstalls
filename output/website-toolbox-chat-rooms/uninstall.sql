-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtbChatRoomPageid', 'wtb_chatroom_username', 'wtb_chatroom_api', 'wtb_chatroom_redirect', 'wtb_chatroom_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_links_chat_to', '_links_chat_to_target', '_links_chat_to_type', '_wtbchatroom_redirect_active');
DELETE FROM wp_usermeta WHERE meta_key IN ('_links_chat_to', '_links_chat_to_target', '_links_chat_to_type', '_wtbchatroom_redirect_active');
DELETE FROM wp_termmeta WHERE meta_key IN ('_links_chat_to', '_links_chat_to_target', '_links_chat_to_type', '_wtbchatroom_redirect_active');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_links_chat_to', '_links_chat_to_target', '_links_chat_to_type', '_wtbchatroom_redirect_active');

