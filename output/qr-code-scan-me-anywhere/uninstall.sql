-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qr_gplus', 'qr_twitter', 'qr_facebook', 'qr_weibo', 'qr_youtube', 'qr_myspace', 'qr_wordpress', 'qr_pinterest', 'qr_flickr', 'qr_linkedin', 'qr_delicious', 'qr_stumbleupon', 'show_credit');

