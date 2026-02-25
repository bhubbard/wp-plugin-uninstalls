-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbp_unread_posts_debug', 'bbp_unread_post_image_path_unread', 'bbp_unread_post_image_path_read', 'bbp_unread_post_amount');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbp_last_active_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbp_last_active_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbp_last_active_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbp_last_active_time');

