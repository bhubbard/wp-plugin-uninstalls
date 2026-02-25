-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tweeter_username', 'tweeter_tweetCount', 'tweeter_delay', 'tweeter_replies');

