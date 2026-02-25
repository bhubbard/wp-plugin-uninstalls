-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ahjwtauth-private-secret', 'ahjwtauth-jwks-url', 'ahjwtauth-jwt-header', 'ahjwtauth-user-role', 'ahjwtauth_jwks_json');

