-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('profile1', 'profile2', 'profile3', 'user_pic1', 'user_pic2', 'user_pic3');
DELETE FROM wp_usermeta WHERE meta_key IN ('profile1', 'profile2', 'profile3', 'user_pic1', 'user_pic2', 'user_pic3');
DELETE FROM wp_termmeta WHERE meta_key IN ('profile1', 'profile2', 'profile3', 'user_pic1', 'user_pic2', 'user_pic3');
DELETE FROM wp_commentmeta WHERE meta_key IN ('profile1', 'profile2', 'profile3', 'user_pic1', 'user_pic2', 'user_pic3');

