-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cfwchat_phone', '_cfwchat_fields', '_cfwchat_bg_color', '_cfwchat_text_color', '_cfwchat_button_color', '_cfwchat_button_hover');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cfwchat_phone', '_cfwchat_fields', '_cfwchat_bg_color', '_cfwchat_text_color', '_cfwchat_button_color', '_cfwchat_button_hover');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cfwchat_phone', '_cfwchat_fields', '_cfwchat_bg_color', '_cfwchat_text_color', '_cfwchat_button_color', '_cfwchat_button_hover');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cfwchat_phone', '_cfwchat_fields', '_cfwchat_bg_color', '_cfwchat_text_color', '_cfwchat_button_color', '_cfwchat_button_hover');

