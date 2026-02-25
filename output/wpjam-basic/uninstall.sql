-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'wp_attachment_pages_enabled', 'disallowed_keys', 'wpjam_basic_verify');
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpjam_weixin_user', 'wpjam_weixin_user_failed_times', 'avatarurl', 'posts_per_page', 'views', 'toc_hidden', 'toc_depth', 'images', 'thumbnail', 'source_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpjam_weixin_user', 'wpjam_weixin_user_failed_times', 'avatarurl', 'posts_per_page', 'views', 'toc_hidden', 'toc_depth', 'images', 'thumbnail', 'source_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpjam_weixin_user', 'wpjam_weixin_user_failed_times', 'avatarurl', 'posts_per_page', 'views', 'toc_hidden', 'toc_depth', 'images', 'thumbnail', 'source_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpjam_weixin_user', 'wpjam_weixin_user_failed_times', 'avatarurl', 'posts_per_page', 'views', 'toc_hidden', 'toc_depth', 'images', 'thumbnail', 'source_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'custom_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'custom_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'custom_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'custom_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'seo_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'seo_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'seo_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'seo_%';

