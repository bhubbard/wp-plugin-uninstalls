-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('facebook_page', 'twitter_page', 'instagram_page', 'youtube_page', 'vimeo_page', 'rss_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sa_picture', 'sa_link', 'sa_author');
DELETE FROM wp_usermeta WHERE meta_key IN ('sa_picture', 'sa_link', 'sa_author');
DELETE FROM wp_termmeta WHERE meta_key IN ('sa_picture', 'sa_link', 'sa_author');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sa_picture', 'sa_link', 'sa_author');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%link';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%link';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%link';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%link';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%date_added';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%date_added';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%date_added';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date_added';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%date_created';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%date_created';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%date_created';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date_created';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%picture';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%picture';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%picture';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%picture';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%author';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%author';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%author';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%author';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%video_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%video_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%video_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%video_id';

