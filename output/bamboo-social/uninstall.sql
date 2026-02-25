-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%initialised';
DELETE FROM wp_options WHERE option_name LIKE '%twitter_link';
DELETE FROM wp_options WHERE option_name LIKE '%facebook_link';
DELETE FROM wp_options WHERE option_name LIKE '%google_link';
DELETE FROM wp_options WHERE option_name LIKE '%linkedin_link';
DELETE FROM wp_options WHERE option_name LIKE '%instagram_link';
DELETE FROM wp_options WHERE option_name LIKE '%pinterest_link';
DELETE FROM wp_options WHERE option_name LIKE '%tumblr_link';

