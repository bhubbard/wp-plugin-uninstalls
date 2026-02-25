-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chat_webirc_options', 'chat_webirc_temp_avatars', 'chat_webirc_temp_files');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('chat_webirc_avatar', 'chat_webirc_avatar_uploaded_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('chat_webirc_avatar', 'chat_webirc_avatar_uploaded_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('chat_webirc_avatar', 'chat_webirc_avatar_uploaded_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('chat_webirc_avatar', 'chat_webirc_avatar_uploaded_at');

