-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_privatepost', 'PrivateColor', 'what_to_show', 'PrivateIndicator', 'MyPrivateCat', 'PrivateRSSFeedLocation', 'rss_language');

