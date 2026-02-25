-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_gmp_video_thumbnail', '_gmp_video_uri', '_gmp_video_embed', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_gmp_video_thumbnail', '_gmp_video_uri', '_gmp_video_embed', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_gmp_video_thumbnail', '_gmp_video_uri', '_gmp_video_embed', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_gmp_video_thumbnail', '_gmp_video_uri', '_gmp_video_embed', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

