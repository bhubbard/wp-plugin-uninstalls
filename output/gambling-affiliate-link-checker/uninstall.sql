-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alfchecker__alc_method', 'alfchecker__alc_list', 'alfchecker__alc_value', 'alfchecker__alc_slack_hook', 'alfchecker__alc_email');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

