<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twc_option_butt');
delete_site_option('twc_option_butt');
delete_option('twc_option_img_cite');
delete_site_option('twc_option_img_cite');
delete_option('twc_option_show_cite');
delete_site_option('twc_option_show_cite');
delete_option('twc_option_butt_txt');
delete_site_option('twc_option_butt_txt');
delete_option('twc_option_TXT_comm_h2');
delete_site_option('twc_option_TXT_comm_h2');
delete_option('twc_option_TXT_comm_form_h2');
delete_site_option('twc_option_TXT_comm_form_h2');
delete_option('twc_option_TXT_comm_no_comm');
delete_site_option('twc_option_TXT_comm_no_comm');
delete_option('twc_option_TXT_comm_textarea');
delete_site_option('twc_option_TXT_comm_textarea');
delete_option('twc_option_TXT_comm_input1');
delete_site_option('twc_option_TXT_comm_input1');
delete_option('twc_option_TXT_comm_input2');
delete_site_option('twc_option_TXT_comm_input2');

