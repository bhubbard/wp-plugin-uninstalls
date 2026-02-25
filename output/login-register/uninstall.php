<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('login_register_emailislogin');
delete_site_option('login_register_emailislogin');
delete_option('login_register_expiredpassword_errorcode');
delete_site_option('login_register_expiredpassword_errorcode');
delete_option('login_register_login_post');
delete_site_option('login_register_login_post');
delete_option('login_register_logout_post');
delete_site_option('login_register_logout_post');
delete_option('login_register_lostpassword_post');
delete_site_option('login_register_lostpassword_post');
delete_option('login_register_minpassword_length');
delete_site_option('login_register_minpassword_length');
delete_option('login_register_pullcssandjavascriptintoview');
delete_site_option('login_register_pullcssandjavascriptintoview');
delete_option('login_register_ajaxonlyfeatures');
delete_site_option('login_register_ajaxonlyfeatures');
delete_option('login_register_resetpassword_post');
delete_site_option('login_register_resetpassword_post');
delete_option('login_register_tell_admin_when_password_recovered');
delete_site_option('login_register_tell_admin_when_password_recovered');
delete_option('login_register_userregistration');
delete_site_option('login_register_userregistration');
delete_option('login_register_userregistration_post');
delete_site_option('login_register_userregistration_post');
delete_option('login_register_invitation_codes');
delete_site_option('login_register_invitation_codes');

