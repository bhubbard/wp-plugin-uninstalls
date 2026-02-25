-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_comments_vip_level_num_1', 'wp_comments_vip_level_num_2', 'wp_comments_vip_level_num_3', 'wp_comments_vip_level_num_4', 'wp_comments_vip_level_num_5', 'wp_comments_vip_level_num_6', 'wp_comments_vip_level_num_7', 'wp_comments_vip_display_admin_vip');
DELETE FROM wp_options WHERE option_name LIKE 'wp_comments_vip_level_num_%';

