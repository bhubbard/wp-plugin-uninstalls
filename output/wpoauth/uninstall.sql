-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('secuforoauth_providers', 'secuforoauth_user_providers', 'secuforoauth_is_installed', 'secuforoauth_is_alone', 'secuforoauth_user_login', 'secuforoauth_login_token');

