-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boss_social_facebook', 'boss_social_twitter', 'boss_social_google', 'boss_social_blogger', 'boss_social_tumblr', 'boss_social_wordpress', 'boss_social_behance', 'boss_social_pinterest', 'boss_social_stumbleupon', 'boss_social_digg', 'boss_social_delicious', 'boss_social_deviantart', 'boss_social_linkedin', 'boss_social_skype', 'boss_social_flickr', 'boss_social_picasa', 'boss_social_instagram', 'boss_social_dribbble', 'boss_social_forrst', 'boss_social_lastfm', 'boss_social_soundcloud', 'boss_social_myspace', 'boss_social_vimeo', 'boss_social_youtube', 'boss_social_paypal', 'boss_social_rss', 'boss_social_open_links');

