-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_user_profile_page');
DELETE FROM wp_options WHERE option_name LIKE '%_users_per_page';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_pagination';
DELETE FROM wp_options WHERE option_name LIKE '%_pagination_style';
DELETE FROM wp_options WHERE option_name LIKE '%_user_meta_fields';
DELETE FROM wp_options WHERE option_name LIKE '%_settings_meta_fields';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_elementor_notice_dismissed', 'hide_in_members', 'cover_photo', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_elementor_notice_dismissed', 'hide_in_members', 'cover_photo', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_elementor_notice_dismissed', 'hide_in_members', 'cover_photo', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_elementor_notice_dismissed', 'hide_in_members', 'cover_photo', 'nickname');

