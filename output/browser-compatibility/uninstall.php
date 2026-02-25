<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bctext');
delete_site_option('bctext');
delete_option('bc_d_ie6');
delete_site_option('bc_d_ie6');
delete_option('bc_d_ie7');
delete_site_option('bc_d_ie7');
delete_option('bc_d_ie8');
delete_site_option('bc_d_ie8');
delete_option('bc_d_opera');
delete_site_option('bc_d_opera');
delete_option('bc_d_safari');
delete_site_option('bc_d_safari');
delete_option('bc_d_ns');
delete_site_option('bc_d_ns');
delete_option('bc_d_chrome');
delete_site_option('bc_d_chrome');
delete_option('bc_d_mozilla');
delete_site_option('bc_d_mozilla');
delete_option('resolution');
delete_site_option('resolution');
delete_option('bc_d_iphone');
delete_site_option('bc_d_iphone');
delete_option('bc_closebutton');
delete_site_option('bc_closebutton');
delete_option('bc_bg_colour');
delete_site_option('bc_bg_colour');
delete_option('bc_text_colour');
delete_site_option('bc_text_colour');
delete_option('bc_swidth');
delete_site_option('bc_swidth');
delete_option('bc_sheight');
delete_site_option('bc_sheight');

