-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%.clientId';
DELETE FROM wp_options WHERE option_name LIKE '%.clientSecret';
DELETE FROM wp_options WHERE option_name LIKE '%.authBaseUrl';
DELETE FROM wp_options WHERE option_name LIKE '%.accessToken';
DELETE FROM wp_options WHERE option_name LIKE '%.importState';
DELETE FROM wp_options WHERE option_name LIKE '%.importFinish';

