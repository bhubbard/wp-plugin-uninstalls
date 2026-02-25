-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twitterKeywords_options', 'keywords', 'username', 'tweetN', 'widgetText', 'lang');

