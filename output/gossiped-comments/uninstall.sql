-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gossiped_api_key', 'gossiped_site_verified', 'gossiped_replace_comments', 'gossiped_theme', 'gossiped_max_comments', 'gossiped_last_verification_attempt', 'gossiped_last_comment_check', 'gossiped_total_comments', 'gossiped_auto_add');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gossiped_comments_disabled', '_gossiped_custom_theme', 'gossiped_user_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gossiped_comments_disabled', '_gossiped_custom_theme', 'gossiped_user_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gossiped_comments_disabled', '_gossiped_custom_theme', 'gossiped_user_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gossiped_comments_disabled', '_gossiped_custom_theme', 'gossiped_user_id');

