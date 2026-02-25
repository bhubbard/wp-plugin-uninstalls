-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tweetster_consumer_key', 'tweetster_consumer_secret', 'tweetster_user_token', 'tweetster_token_secret', 'tweetster_bitly_login', 'tweetster_bitly_apikey');

