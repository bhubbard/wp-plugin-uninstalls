-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpps_general_settings', 'bpps_groups_settings', 'bpsp_site_post_settings', 'bpps_friends_settings', 'bpps_members_settings', 'bpps_following_settings', 'bpps_followed_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bpgps_group', 'bpgps_group_post_status', 'bpps_group_post_sticky', 'bpps_my_posts_sticky');
DELETE FROM wp_usermeta WHERE meta_key IN ('bpgps_group', 'bpgps_group_post_status', 'bpps_group_post_sticky', 'bpps_my_posts_sticky');
DELETE FROM wp_termmeta WHERE meta_key IN ('bpgps_group', 'bpgps_group_post_status', 'bpps_group_post_sticky', 'bpps_my_posts_sticky');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bpgps_group', 'bpgps_group_post_status', 'bpps_group_post_sticky', 'bpps_my_posts_sticky');

