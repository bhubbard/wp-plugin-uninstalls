<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('g3_password_status');
delete_site_option('g3_password_status');
delete_option('g3_password_pass');
delete_site_option('g3_password_pass');
delete_option('g3_text1');
delete_site_option('g3_text1');
delete_option('g3_text2');
delete_site_option('g3_text2');
delete_option('g3_color_text');
delete_site_option('g3_color_text');

