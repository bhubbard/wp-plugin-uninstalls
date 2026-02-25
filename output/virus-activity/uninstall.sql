-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_lastFeed';
DELETE FROM wp_options WHERE option_name LIKE '%_nextFeedFetchTime';
DELETE FROM wp_options WHERE option_name LIKE '%_numberOfTries';

