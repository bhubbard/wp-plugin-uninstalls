-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cron', '_site_transient_update_core', '_site_transient_update_plugins', '_site_transient_update_themes', 'updates2slack_lastrundt', 'updates2slack_lastrundata');
DELETE FROM wp_options WHERE option_name LIKE '%_slackurls';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_sitename';
DELETE FROM wp_options WHERE option_name LIKE '%_nextruntime_date';
DELETE FROM wp_options WHERE option_name LIKE '%_nextruntime_time';
DELETE FROM wp_options WHERE option_name LIKE '%_frequency';
DELETE FROM wp_options WHERE option_name LIKE '%_ignore_plugins';
DELETE FROM wp_options WHERE option_name LIKE '%_ignore_themes';
DELETE FROM wp_options WHERE option_name LIKE '%_lastrundt';
DELETE FROM wp_options WHERE option_name LIKE '%_lastrundata';
DELETE FROM wp_options WHERE option_name LIKE '%_option_name';

