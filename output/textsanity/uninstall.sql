-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%access_token';
DELETE FROM wp_options WHERE option_name LIKE '%refresh_token';
DELETE FROM wp_options WHERE option_name LIKE '%settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('position', 'enabled', 'location', 'type', 'tags', 'keywords', 'message', 'background_color', 'text_color', 'popup_delay', 'chat_popup_auto', 'chat_popup_delay', 'description', 'thank_you', 'no_style');
DELETE FROM wp_usermeta WHERE meta_key IN ('position', 'enabled', 'location', 'type', 'tags', 'keywords', 'message', 'background_color', 'text_color', 'popup_delay', 'chat_popup_auto', 'chat_popup_delay', 'description', 'thank_you', 'no_style');
DELETE FROM wp_termmeta WHERE meta_key IN ('position', 'enabled', 'location', 'type', 'tags', 'keywords', 'message', 'background_color', 'text_color', 'popup_delay', 'chat_popup_auto', 'chat_popup_delay', 'description', 'thank_you', 'no_style');
DELETE FROM wp_commentmeta WHERE meta_key IN ('position', 'enabled', 'location', 'type', 'tags', 'keywords', 'message', 'background_color', 'text_color', 'popup_delay', 'chat_popup_auto', 'chat_popup_delay', 'description', 'thank_you', 'no_style');

