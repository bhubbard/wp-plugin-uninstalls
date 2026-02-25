-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcil-debug', 'rcil-geo-method');
DELETE FROM wp_options WHERE option_name LIKE '%_db_ver';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_countries';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_ips';
DELETE FROM wp_options WHERE option_name LIKE '%_block_countries';
DELETE FROM wp_options WHERE option_name LIKE '%_block_ips';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_redirects';
DELETE FROM wp_options WHERE option_name LIKE '%_bypass_roles';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_integration';
DELETE FROM wp_options WHERE option_name LIKE '%_actions_notices';
DELETE FROM wp_options WHERE option_name LIKE 'rcil-test-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rcil-user-lockout');
DELETE FROM wp_usermeta WHERE meta_key IN ('rcil-user-lockout');
DELETE FROM wp_termmeta WHERE meta_key IN ('rcil-user-lockout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rcil-user-lockout');

