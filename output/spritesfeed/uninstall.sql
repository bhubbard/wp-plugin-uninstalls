-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfs-global-options', 'sfs-fb-credentials', 'sfs-yt-credentials', 'sfs-flickr-credentials', 'sfs-twitter-credentials', 'sfs-insta-credentials', 'sfs-feed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('feed_picture', 'feed_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('feed_picture', 'feed_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('feed_picture', 'feed_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('feed_picture', 'feed_link');

