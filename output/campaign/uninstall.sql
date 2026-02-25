-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('set_percentage', 'paypal_type', 'live_id', 'sandbox_id', 'camp_deadline', 'camp_action_msg', 'cable_del_msg', 'paypal_msg', 'donate_msg', 'cp_user_edit_msg', 'camp_create_msg', 'cp_forgot_rst_msg', 'cp_forgot_msg', 'forgot_link_msg', 'cp_user_login_msg', 'cp_user_reg_msg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('camp_exp', '_camp_status', 'camp_brand', 'camp_video', '_camp_pic', '_amount_to_achieve', '_time_to_achieve', 'first_name', 'last_name', 'cp_user_dob', 'cp_user_pass', '_camp_facebook_page', '_camp_twiiter_page', '_camp_linkedin_page', '_camp_is_live', 'camp_author', '_cam_duration', 'cp_user_brief_info', 'cp_user_exp');
DELETE FROM wp_usermeta WHERE meta_key IN ('camp_exp', '_camp_status', 'camp_brand', 'camp_video', '_camp_pic', '_amount_to_achieve', '_time_to_achieve', 'first_name', 'last_name', 'cp_user_dob', 'cp_user_pass', '_camp_facebook_page', '_camp_twiiter_page', '_camp_linkedin_page', '_camp_is_live', 'camp_author', '_cam_duration', 'cp_user_brief_info', 'cp_user_exp');
DELETE FROM wp_termmeta WHERE meta_key IN ('camp_exp', '_camp_status', 'camp_brand', 'camp_video', '_camp_pic', '_amount_to_achieve', '_time_to_achieve', 'first_name', 'last_name', 'cp_user_dob', 'cp_user_pass', '_camp_facebook_page', '_camp_twiiter_page', '_camp_linkedin_page', '_camp_is_live', 'camp_author', '_cam_duration', 'cp_user_brief_info', 'cp_user_exp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('camp_exp', '_camp_status', 'camp_brand', 'camp_video', '_camp_pic', '_amount_to_achieve', '_time_to_achieve', 'first_name', 'last_name', 'cp_user_dob', 'cp_user_pass', '_camp_facebook_page', '_camp_twiiter_page', '_camp_linkedin_page', '_camp_is_live', 'camp_author', '_cam_duration', 'cp_user_brief_info', 'cp_user_exp');

