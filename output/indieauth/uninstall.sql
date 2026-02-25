-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('indieauth_config', 'indieauth_root_user', 'indieauth_expires_in', 'indieauth_show_login_form', 'iw_default_author', 'single_author');
DELETE FROM wp_options WHERE option_name LIKE '%ids';
DELETE FROM wp_options WHERE option_name LIKE 'indieauth_discovery_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('indieauth_external_tokens', 'icon', 'client_uri', 'last_modified');
DELETE FROM wp_usermeta WHERE meta_key IN ('indieauth_external_tokens', 'icon', 'client_uri', 'last_modified');
DELETE FROM wp_termmeta WHERE meta_key IN ('indieauth_external_tokens', 'icon', 'client_uri', 'last_modified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('indieauth_external_tokens', 'icon', 'client_uri', 'last_modified');

