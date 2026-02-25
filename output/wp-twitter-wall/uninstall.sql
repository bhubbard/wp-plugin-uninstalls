-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twitterwall_bgcolor', 'twitterwall_avatar_bdcolor', 'twitterwall_consumer_key', 'twitterwall_consumer_secret', 'twitterwall_count', 'twitterwall_query', 'twitterwall_lang', 'twitterwall_url', 'twitterwall_options_updated');
DELETE FROM wp_options WHERE option_name LIKE '%_twitter_access_token';

