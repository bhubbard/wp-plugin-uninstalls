-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('llynx_options');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_options_bk';

