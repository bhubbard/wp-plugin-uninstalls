-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('music_press_member_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('music_press_member_cover', 'music_press_member_img', 'total_follower', 'total_following', 'music_press_member_basic_info', 'music_press_member_contacts');
DELETE FROM wp_usermeta WHERE meta_key IN ('music_press_member_cover', 'music_press_member_img', 'total_follower', 'total_following', 'music_press_member_basic_info', 'music_press_member_contacts');
DELETE FROM wp_termmeta WHERE meta_key IN ('music_press_member_cover', 'music_press_member_img', 'total_follower', 'total_following', 'music_press_member_basic_info', 'music_press_member_contacts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('music_press_member_cover', 'music_press_member_img', 'total_follower', 'total_following', 'music_press_member_basic_info', 'music_press_member_contacts');

