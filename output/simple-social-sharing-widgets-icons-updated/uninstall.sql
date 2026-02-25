-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ss_iconsize', 'ss_title', 'ss_twitterwidget', 'ss_googlepluswidget', 'ss_facebookwidget', 'ss_facebook', 'ss_twitter', 'ss_email', 'ss_blogger', 'ss_delicious', 'ss_digg', 'ss_google', 'ss_myspace', 'ss_stumbleupon', 'ss_yahoo', 'ss_reddit', 'ss_technorati', 'ss_rss');
DELETE FROM wp_options WHERE option_name LIKE 'ss_%';

