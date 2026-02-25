-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('current_theme', 'ua_db_version', 'update_core', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_authUsername';
DELETE FROM wp_options WHERE option_name LIKE '%_authPassword';
DELETE FROM wp_options WHERE option_name LIKE '%_projectSlug';
DELETE FROM wp_options WHERE option_name LIKE '%_issueType';
DELETE FROM wp_options WHERE option_name LIKE '%_day';
DELETE FROM wp_options WHERE option_name LIKE '%_emailTo';
DELETE FROM wp_options WHERE option_name LIKE '%_secondEmail';
DELETE FROM wp_options WHERE option_name LIKE '%_flowEndpoint';
DELETE FROM wp_options WHERE option_name LIKE '%_iftttEndpoint';
DELETE FROM wp_options WHERE option_name LIKE '%_zapEndpoint';

