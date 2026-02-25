<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('insitelogin_login_page');
delete_site_option('insitelogin_login_page');
delete_option('insitelogin_logged_in');
delete_site_option('insitelogin_logged_in');
delete_option('insitelogin_logged_in_title');
delete_site_option('insitelogin_logged_in_title');
delete_option('insitelogin_logged_out_title');
delete_site_option('insitelogin_logged_out_title');
delete_option('insitelogin_text_login');
delete_site_option('insitelogin_text_login');
delete_option('insitelogin_text_lostpassword');
delete_site_option('insitelogin_text_lostpassword');
delete_option('insitelogin_text_retrievepassword');
delete_site_option('insitelogin_text_retrievepassword');
delete_option('insitelogin_text_resetpass');
delete_site_option('insitelogin_text_resetpass');
delete_option('insitelogin_text_register');
delete_site_option('insitelogin_text_register');

