-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iusisu_primary_color', 'iusisu_secondary_color', 'iusisu_pre_secondary_color', 'iusisu_pre_secondary_hover_color', 'iusisu_registration_form', 'iusisu_login_form', 'iusisu_my_account', 'iusisu_forgot_password', 'iusisu_change_password', 'iusisu_role', 'iusisu_login_msg', 'iusisu_registration_msg', 'iusisu_forget_pass_msg', 'iusisu_change_pass_msg', 'iusisu_user_from_email', 'iusisu_user_signature', 'iusisu_user_subject', 'iusisu_admin_subject', 'iusisu_userforgot_subject', 'iusisu_userchange_subject', 'iusisu_user_registration_email_body', 'iusisu_user_registration_email_body_admin', 'iusisu_user_forget_password_email_body', 'iusisu_user_password_change_email_body', 'iusisu_user_login_page', 'iusisu_user_registration_page', 'iusisu_user_my_account_page', 'iusisu_user_forgot_pass_page', 'iusisu_user_logo_img', 'admin_subject');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_activated', 'activation_code', 'user_profile', 'first_name', 'last_name', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_activated', 'activation_code', 'user_profile', 'first_name', 'last_name', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_activated', 'activation_code', 'user_profile', 'first_name', 'last_name', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_activated', 'activation_code', 'user_profile', 'first_name', 'last_name', 'nickname');

