-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('form_notify_line_btn_form_display', 'form_notify_line_btn_form_display_position', 'form_notify_line_btn_checkout_display', 'form_notify_line_btn_checkout_display_position', 'form_notify_line_btn_wp_form_display', 'form_notify_line_btn_form_display_size', 'form_notify_line_btn_form_display_align', 'form_notify_line_btn_checkout_display_size', 'form_notify_line_btn_checkout_display_align', 'form_notify_line_btn_checkout_text', 'form_notify_line_btn_redirect', 'form_notify_line_btn_user_email', 'form_notify_line_login_channel_id', 'form_notify_line_login_channel_secret', 'form_notify_line_btn_user_role', 'form_notify_line_message_token', 'form_notify_line_notify_token', 'form_notify_easygo_username', 'form_notify_easygo_password', 'form_notify_e8d_enable', 'form_notify_e8d_user_id', 'form_notify_e8d_password', 'form_notify_e8d_token', 'wc_notify_e8d_token', 'form_notify_mitake_username', 'form_notify_mitake_password', 'form_notify_mitake_api_url', 'form_notify_db_version', 'form_notify_mitake_enable', 'form_notify_easygo_enable');
DELETE FROM wp_options WHERE option_name LIKE 'form_notify_line_state_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('form_notify_line_user_id', 'form_notify_line_user_avatar', 'nickname', 'billing_email', 'form_notify_action_module', 'line_user_id', '_heiblack_social_line_id', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('form_notify_line_user_id', 'form_notify_line_user_avatar', 'nickname', 'billing_email', 'form_notify_action_module', 'line_user_id', '_heiblack_social_line_id', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('form_notify_line_user_id', 'form_notify_line_user_avatar', 'nickname', 'billing_email', 'form_notify_action_module', 'line_user_id', '_heiblack_social_line_id', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('form_notify_line_user_id', 'form_notify_line_user_avatar', 'nickname', 'billing_email', 'form_notify_action_module', 'line_user_id', '_heiblack_social_line_id', '_elementor_data');

