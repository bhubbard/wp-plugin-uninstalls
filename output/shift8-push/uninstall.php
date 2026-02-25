<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shift8_push_application_user');
delete_site_option('shift8_push_application_user');
delete_option('shift8_push_application_password');
delete_site_option('shift8_push_application_password');
delete_option('shift8_push_dst_url');
delete_site_option('shift8_push_dst_url');
delete_option('shift8_push_src_url');
delete_site_option('shift8_push_src_url');
delete_option('shift8_push_enabled');
delete_site_option('shift8_push_enabled');

