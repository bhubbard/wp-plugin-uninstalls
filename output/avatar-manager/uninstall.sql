-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avatar_manager');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_avatar_manager_custom_avatar_rating', '_avatar_manager_is_custom_avatar', '_avatar_manager_custom_avatar', 'avatar_manager_custom_avatar', 'avatar_manager_avatar_type', 'avatar_manager_blog_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_avatar_manager_custom_avatar_rating', '_avatar_manager_is_custom_avatar', '_avatar_manager_custom_avatar', 'avatar_manager_custom_avatar', 'avatar_manager_avatar_type', 'avatar_manager_blog_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_avatar_manager_custom_avatar_rating', '_avatar_manager_is_custom_avatar', '_avatar_manager_custom_avatar', 'avatar_manager_custom_avatar', 'avatar_manager_avatar_type', 'avatar_manager_blog_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_avatar_manager_custom_avatar_rating', '_avatar_manager_is_custom_avatar', '_avatar_manager_custom_avatar', 'avatar_manager_custom_avatar', 'avatar_manager_avatar_type', 'avatar_manager_blog_id');

