-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpp_setting', 'num_post_rss');
DELETE FROM wp_options WHERE option_name LIKE 'wpp_redirection_feed%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('download_count', 'like_count', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('download_count', 'like_count', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('download_count', 'like_count', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('download_count', 'like_count', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_image';

