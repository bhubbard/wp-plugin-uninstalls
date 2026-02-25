-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('login_register_emailislogin', 'login_register_expiredpassword_errorcode', 'login_register_login_post', 'login_register_logout_post', 'login_register_lostpassword_post', 'login_register_minpassword_length', 'login_register_pullcssandjavascriptintoview', 'login_register_ajaxonlyfeatures', 'login_register_resetpassword_post', 'login_register_tell_admin_when_password_recovered', 'login_register_userregistration', 'login_register_userregistration_post', 'login_register_invitation_codes');

