<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('set_flbtn_bg');
delete_site_option('set_flbtn_bg');
delete_option('set_flbtn_color');
delete_site_option('set_flbtn_color');
delete_option('set_flbtn_txt');
delete_site_option('set_flbtn_txt');
delete_option('set_close_txt');
delete_site_option('set_close_txt');
delete_option('set_flbtn_active');
delete_site_option('set_flbtn_active');

