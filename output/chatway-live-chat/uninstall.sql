-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatway_user_identifier', 'chatway_token', 'chatway_redirection', 'chatway_api_secret_license_key', 'chatway_has_auth_error', 'chatway_wp_plugin_version', 'chatway_secret_key', 'chatway_user_cache_identifier', 'chatway_unread_messages_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', 'first_name', 'last_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'chatway_status_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'chatway_status_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'chatway_status_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'chatway_status_%';

