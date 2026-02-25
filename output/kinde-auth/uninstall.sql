-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kinde_auth_token_host', 'kinde_auth_client_id', 'kinde_auth_client_secret', 'kinde_auth_grant_type', 'kinde_auth_default_login_page', 'kinde_auth_site_protocol', 'kinde_auth_auto_user_role');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_type', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_type', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_type', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_type', 'first_name', 'last_name');

