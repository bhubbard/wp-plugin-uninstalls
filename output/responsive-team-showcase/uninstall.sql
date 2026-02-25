-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_member_position', '_facebook_url', '_likdin_url', '_insta_url', '_twitter_url', '_google_url', '_youtube_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_member_position', '_facebook_url', '_likdin_url', '_insta_url', '_twitter_url', '_google_url', '_youtube_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_member_position', '_facebook_url', '_likdin_url', '_insta_url', '_twitter_url', '_google_url', '_youtube_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_member_position', '_facebook_url', '_likdin_url', '_insta_url', '_twitter_url', '_google_url', '_youtube_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

