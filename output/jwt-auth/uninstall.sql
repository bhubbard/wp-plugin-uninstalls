-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jwt_auth_refresh_tokens', 'jwt_auth_refresh_tokens_expires_next', 'jwt_auth_device', 'jwt_auth_pass');
DELETE FROM wp_usermeta WHERE meta_key IN ('jwt_auth_refresh_tokens', 'jwt_auth_refresh_tokens_expires_next', 'jwt_auth_device', 'jwt_auth_pass');
DELETE FROM wp_termmeta WHERE meta_key IN ('jwt_auth_refresh_tokens', 'jwt_auth_refresh_tokens_expires_next', 'jwt_auth_device', 'jwt_auth_pass');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jwt_auth_refresh_tokens', 'jwt_auth_refresh_tokens_expires_next', 'jwt_auth_device', 'jwt_auth_pass');

