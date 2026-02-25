-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_twitter_consumerKey', 'auto_twitter_consumerSecret', 'auto_twitter_accesToken', 'auto_twitter_accesTokenSecret', 'auto_twitter_bitly_username', 'auto_twitter_bitly_api_key');

