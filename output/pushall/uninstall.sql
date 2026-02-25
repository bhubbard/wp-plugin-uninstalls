-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pushall_chanel_id', 'pushall_chanel_key', 'pushall_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pushall_should_send_push', '_pushall_custom_title', '_pushall_custom_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pushall_should_send_push', '_pushall_custom_title', '_pushall_custom_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pushall_should_send_push', '_pushall_custom_title', '_pushall_custom_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pushall_should_send_push', '_pushall_custom_title', '_pushall_custom_message');

