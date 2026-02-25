-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('googleauthenticator_two_screen_signin', 'googleauthenticator_mandatory_mfa_roles', 'googleauthenticator_network_only');

