-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chat_link_enabled', 'chat_link_number', 'chat_link_side', 'chat_link_size', 'chat_link_margin_side', 'chat_link_margin_bottom', 'chat_link_custom_message', 'chat_link_custom_image');

