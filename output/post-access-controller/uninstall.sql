-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('access_denied_message', 'post_types', 'meta_box_location', 'meta_box_priority', 'enable_post_visibility');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('postaccesscontroller_noacs_msg_type', 'postaccesscontroller_noacs_custom_msg', 'postaccesscontroller_group_user', 'postaccesscontroller_public_ind', 'postaccesscontroller_ctrl_type', 'postaccesscontroller_meta_user', 'postaccesscontroller_meta_group', 'postaccesscontroller_meta_role', 'postaccesscontroller_admin_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('postaccesscontroller_noacs_msg_type', 'postaccesscontroller_noacs_custom_msg', 'postaccesscontroller_group_user', 'postaccesscontroller_public_ind', 'postaccesscontroller_ctrl_type', 'postaccesscontroller_meta_user', 'postaccesscontroller_meta_group', 'postaccesscontroller_meta_role', 'postaccesscontroller_admin_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('postaccesscontroller_noacs_msg_type', 'postaccesscontroller_noacs_custom_msg', 'postaccesscontroller_group_user', 'postaccesscontroller_public_ind', 'postaccesscontroller_ctrl_type', 'postaccesscontroller_meta_user', 'postaccesscontroller_meta_group', 'postaccesscontroller_meta_role', 'postaccesscontroller_admin_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('postaccesscontroller_noacs_msg_type', 'postaccesscontroller_noacs_custom_msg', 'postaccesscontroller_group_user', 'postaccesscontroller_public_ind', 'postaccesscontroller_ctrl_type', 'postaccesscontroller_meta_user', 'postaccesscontroller_meta_group', 'postaccesscontroller_meta_role', 'postaccesscontroller_admin_notices');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'postaccesscontroller_meta_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'postaccesscontroller_meta_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'postaccesscontroller_meta_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'postaccesscontroller_meta_%';

