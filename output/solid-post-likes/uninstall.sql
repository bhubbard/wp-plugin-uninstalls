-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_oacs_spl_likes_for_comments_setting', '_oacs_spl_hook_post_hook', '_oacs_spl_hook_woo_hook', '_oacs_spl_cache_support', '_oacs_spl_deinstall_delete', 'carbon_custom_sidebars');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_oacs_spl_user_comment_liked', '_oacs_spl_user_liked', '_oacs_spl_user_comment_IP', '_oacs_spl_user_IP', '_oacs_spl_comment_like_count', '_oacs_spl_post_like_count', '_oacs_spl_comment_like_modified', '_oacs_spl_comment_post_like_modified', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_oacs_spl_user_comment_liked', '_oacs_spl_user_liked', '_oacs_spl_user_comment_IP', '_oacs_spl_user_IP', '_oacs_spl_comment_like_count', '_oacs_spl_post_like_count', '_oacs_spl_comment_like_modified', '_oacs_spl_comment_post_like_modified', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_oacs_spl_user_comment_liked', '_oacs_spl_user_liked', '_oacs_spl_user_comment_IP', '_oacs_spl_user_IP', '_oacs_spl_comment_like_count', '_oacs_spl_post_like_count', '_oacs_spl_comment_like_modified', '_oacs_spl_comment_post_like_modified', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_oacs_spl_user_comment_liked', '_oacs_spl_user_liked', '_oacs_spl_user_comment_IP', '_oacs_spl_user_IP', '_oacs_spl_comment_like_count', '_oacs_spl_post_like_count', '_oacs_spl_comment_like_modified', '_oacs_spl_comment_post_like_modified', '_wp_page_template');

