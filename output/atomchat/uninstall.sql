-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('show_name_in_chat', 'show_docked_layout_on_all_pages', 'atomchat_show_friends', 'atomchat_bp_group_sync', 'atomchat_auth_key', 'atomchat_api_key', 'atomchat_enable_mycred', 'atomchat_clientid', 'atomchatintialaccess', 'atomchat_license_key', 'inbox_sync', 'hide_bar');
DELETE FROM wp_options WHERE option_name LIKE 'atomchat_%';
DELETE FROM wp_options WHERE option_name LIKE 'messageCounter%';
DELETE FROM wp_options WHERE option_name LIKE 'timer%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name');

