-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getgenie_site_token', 'getgenie_subscription_statistics_timestamp', 'getgenie_subscription_statistics', 'getgenie_auth_token_secret_key', 'getgenie_subscription_site_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('getgenie_chat_messages', 'getgenie_chat_template_slug', 'history_input', 'history_output', 'history_creativity_level', 'history_template_slug', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('getgenie_chat_messages', 'getgenie_chat_template_slug', 'history_input', 'history_output', 'history_creativity_level', 'history_template_slug', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('getgenie_chat_messages', 'getgenie_chat_template_slug', 'history_input', 'history_output', 'history_creativity_level', 'history_template_slug', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('getgenie_chat_messages', 'getgenie_chat_template_slug', 'history_input', 'history_output', 'history_creativity_level', 'history_template_slug', '_wp_attachment_image_alt');

