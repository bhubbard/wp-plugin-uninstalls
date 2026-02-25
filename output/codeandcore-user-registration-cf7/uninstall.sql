-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cnc_cf7_selected_form', 'cnc_cf7_user_approval', 'cnc_cf7_email_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cnc_cf7_user_role', 'cnc_cf7_enable_registration', 'cnc_cf7_successurl_field', 'cnc_cf7_skip_email', 'cnc_cf7_user_approval', 'cnc_cf7_auto_login', 'cnc_cf7_enable_password_field', 'cnc_cf7_select_username_field', '_form', 'cnc_cf7_select_email_field', 'cnc_cf7_select_password_field', 'cnc_cf7_select_cpassword_field', 'cnc_cf7_selected_form', 'cf7_uname_field', '_user_approval_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('cnc_cf7_user_role', 'cnc_cf7_enable_registration', 'cnc_cf7_successurl_field', 'cnc_cf7_skip_email', 'cnc_cf7_user_approval', 'cnc_cf7_auto_login', 'cnc_cf7_enable_password_field', 'cnc_cf7_select_username_field', '_form', 'cnc_cf7_select_email_field', 'cnc_cf7_select_password_field', 'cnc_cf7_select_cpassword_field', 'cnc_cf7_selected_form', 'cf7_uname_field', '_user_approval_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('cnc_cf7_user_role', 'cnc_cf7_enable_registration', 'cnc_cf7_successurl_field', 'cnc_cf7_skip_email', 'cnc_cf7_user_approval', 'cnc_cf7_auto_login', 'cnc_cf7_enable_password_field', 'cnc_cf7_select_username_field', '_form', 'cnc_cf7_select_email_field', 'cnc_cf7_select_password_field', 'cnc_cf7_select_cpassword_field', 'cnc_cf7_selected_form', 'cf7_uname_field', '_user_approval_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cnc_cf7_user_role', 'cnc_cf7_enable_registration', 'cnc_cf7_successurl_field', 'cnc_cf7_skip_email', 'cnc_cf7_user_approval', 'cnc_cf7_auto_login', 'cnc_cf7_enable_password_field', 'cnc_cf7_select_username_field', '_form', 'cnc_cf7_select_email_field', 'cnc_cf7_select_password_field', 'cnc_cf7_select_cpassword_field', 'cnc_cf7_selected_form', 'cf7_uname_field', '_user_approval_status');

