-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpblog_post_layouts_activated_time', 'wpblog_post_layouts_upgrade_premium', 'wpblog_post_layouts_premium_prefix', 'wp-blog-post-layouts-admin-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_blog_post_layouts_ignore_review_notice_partially', 'wp_blog_post_layouts_ignore_theme_review_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_blog_post_layouts_ignore_review_notice_partially', 'wp_blog_post_layouts_ignore_theme_review_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_blog_post_layouts_ignore_review_notice_partially', 'wp_blog_post_layouts_ignore_theme_review_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_blog_post_layouts_ignore_review_notice_partially', 'wp_blog_post_layouts_ignore_theme_review_notice');

