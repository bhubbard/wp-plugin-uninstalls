<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tsdevpresslogin_frist_label_text');
delete_site_option('tsdevpresslogin_frist_label_text');
delete_option('tsdevpresslogin_second_label_text');
delete_site_option('tsdevpresslogin_second_label_text');
delete_option('tsdevpresslogin_login_button_text');
delete_site_option('tsdevpresslogin_login_button_text');
delete_option('tsdevpresslogin_logo_url');
delete_site_option('tsdevpresslogin_logo_url');
delete_option('tsdevpresslogin_primary_color');
delete_site_option('tsdevpresslogin_primary_color');
delete_option('tsdevpresslogin_logo');
delete_site_option('tsdevpresslogin_logo');
delete_option('tsdevpresslogin_background_img');
delete_site_option('tsdevpresslogin_background_img');

