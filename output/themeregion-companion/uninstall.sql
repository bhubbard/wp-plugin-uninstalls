-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_csf_errors', '_comment_like_count', '_post_like_count', '_user_comment_liked', '_user_liked', '_user_comment_IP', '_user_IP', '_comment_like_modified', '_post_like_modified');
DELETE FROM wp_usermeta WHERE meta_key IN ('_csf_errors', '_comment_like_count', '_post_like_count', '_user_comment_liked', '_user_liked', '_user_comment_IP', '_user_IP', '_comment_like_modified', '_post_like_modified');
DELETE FROM wp_termmeta WHERE meta_key IN ('_csf_errors', '_comment_like_count', '_post_like_count', '_user_comment_liked', '_user_liked', '_user_comment_IP', '_user_IP', '_comment_like_modified', '_post_like_modified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_csf_errors', '_comment_like_count', '_post_like_count', '_user_comment_liked', '_user_liked', '_user_comment_IP', '_user_IP', '_comment_like_modified', '_post_like_modified');

