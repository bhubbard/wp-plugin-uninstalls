-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_access_token';
DELETE FROM wp_options WHERE option_name LIKE '%mail-integration-365-oauth2-auth-url';
DELETE FROM wp_options WHERE option_name LIKE '%mail-integration-365-oauth2-state';

