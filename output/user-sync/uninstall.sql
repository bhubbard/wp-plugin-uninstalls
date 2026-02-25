-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_server_option', 'mo_user_sync_information_message', 'mo_user_sync_information_message_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'title');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'title');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'title');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mo_user_sync%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mo_user_sync%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mo_user_sync%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mo_user_sync%';

