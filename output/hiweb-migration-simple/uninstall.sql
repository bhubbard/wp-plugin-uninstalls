-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_basedir';
DELETE FROM wp_options WHERE option_name LIKE '%_baseurl';
DELETE FROM wp_options WHERE option_name LIKE '%_basedir_old';
DELETE FROM wp_options WHERE option_name LIKE '%_baseurl_old';

