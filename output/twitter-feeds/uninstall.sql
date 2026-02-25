-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtfeeds_consumer_screen_name', 'wtfeeds_consumer_key', 'wtfeeds_consumer_secret', 'wtfeeds_access_token', 'wtfeeds_access_token_secret', 'wtfeeds_display_number_of_tweets', 'wtfeeds_display_color');

