-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lhn_authentication_info', 'lhn_session_destroyed', 'lhn_oauth_id', 'lhn_oauth_secret', 'lhn_first_authentication_passed', 'lhn_default_chat', 'lhn_display_chat', 'lhn_remove_plugin_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('chat_widget_id', '_price', 'chat_options', 'chat_dictionary', 'closedpostboxes_lhn-chat', 'chat_display', 'chat_hide');
DELETE FROM wp_usermeta WHERE meta_key IN ('chat_widget_id', '_price', 'chat_options', 'chat_dictionary', 'closedpostboxes_lhn-chat', 'chat_display', 'chat_hide');
DELETE FROM wp_termmeta WHERE meta_key IN ('chat_widget_id', '_price', 'chat_options', 'chat_dictionary', 'closedpostboxes_lhn-chat', 'chat_display', 'chat_hide');
DELETE FROM wp_commentmeta WHERE meta_key IN ('chat_widget_id', '_price', 'chat_options', 'chat_dictionary', 'closedpostboxes_lhn-chat', 'chat_display', 'chat_hide');

