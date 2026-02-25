<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mpclp_login_image');
delete_site_option('mpclp_login_image');
delete_option('mpclp_login_image_link');
delete_site_option('mpclp_login_image_link');
delete_option('mpclp_login_image_height');
delete_site_option('mpclp_login_image_height');
delete_option('mpclp_login_background');
delete_site_option('mpclp_login_background');
delete_option('mpclp_background');
delete_site_option('mpclp_background');
delete_option('mpclp_background_repeat');
delete_site_option('mpclp_background_repeat');
delete_option('mpclp_background_size');
delete_site_option('mpclp_background_size');
delete_option('mpclp_login_form_background');
delete_site_option('mpclp_login_form_background');
delete_option('mpclp_login_form_label');
delete_site_option('mpclp_login_form_label');
delete_option('mpclp_login_message');
delete_site_option('mpclp_login_message');
delete_option('mpclp_login_btn_background');
delete_site_option('mpclp_login_btn_background');
delete_option('mpclp_login_btn_background_hover');
delete_site_option('mpclp_login_btn_background_hover');
delete_option('mpclp');
delete_site_option('mpclp');

