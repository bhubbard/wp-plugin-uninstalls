-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twitter_button_type1', 'twitter_button_type2', 'twitter_button_account', 'twitter_button_rt', 'twitter_button_rec', 'twitter_button_topstyle', 'twitter_button_bottomstyle');

