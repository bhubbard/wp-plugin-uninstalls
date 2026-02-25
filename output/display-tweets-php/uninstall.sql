-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('displaytweets_version', 'displaytweets_settings', 'displaytweets_tweets');

