-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twitter_hashtag_blaster_hashtag', 'twitter_hashtag_blaster_button_size');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('twitter_hashtag_blaster_bitly');
DELETE FROM wp_usermeta WHERE meta_key IN ('twitter_hashtag_blaster_bitly');
DELETE FROM wp_termmeta WHERE meta_key IN ('twitter_hashtag_blaster_bitly');
DELETE FROM wp_commentmeta WHERE meta_key IN ('twitter_hashtag_blaster_bitly');

