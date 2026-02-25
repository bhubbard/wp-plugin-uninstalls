-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('insitelogin_login_page', 'insitelogin_logged_in', 'insitelogin_logged_in_title', 'insitelogin_logged_out_title', 'insitelogin_text_login', 'insitelogin_text_lostpassword', 'insitelogin_text_retrievepassword', 'insitelogin_text_resetpass', 'insitelogin_text_register');

