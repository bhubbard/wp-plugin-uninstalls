<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icegram_cm_field1_cookie_message');
delete_site_option('icegram_cm_field1_cookie_message');
delete_option('icegram_cm_field3_cookie_button_text');
delete_site_option('icegram_cm_field3_cookie_button_text');
delete_option('icegram_cm_field2_cookie_expire_time');
delete_site_option('icegram_cm_field2_cookie_expire_time');
delete_option('icegram_cm_field4_cookie_bg_color');
delete_site_option('icegram_cm_field4_cookie_bg_color');
delete_option('icegram_cm_field5_cookie_text_color');
delete_site_option('icegram_cm_field5_cookie_text_color');
delete_option('icegram_cm_field6_cookie_button_color');
delete_site_option('icegram_cm_field6_cookie_button_color');
delete_option('icegram_cm_field7_cookie_button_text_color');
delete_site_option('icegram_cm_field7_cookie_button_text_color');

