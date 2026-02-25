-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctc_chat_settings', 'ctc_chat_settings_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ctc_chat_hide_button', '_ctc_chat_custom_message', '_ctc_chat_assigned_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ctc_chat_hide_button', '_ctc_chat_custom_message', '_ctc_chat_assigned_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ctc_chat_hide_button', '_ctc_chat_custom_message', '_ctc_chat_assigned_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ctc_chat_hide_button', '_ctc_chat_custom_message', '_ctc_chat_assigned_number');

