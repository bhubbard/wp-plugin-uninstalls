-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rsh-TweetBtn_options', 'rsh-TweetBtn_show');

