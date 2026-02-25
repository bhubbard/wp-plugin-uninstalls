<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adminHeaderNote_message');
delete_site_option('adminHeaderNote_message');
delete_option('adminHeaderNote_link');
delete_site_option('adminHeaderNote_link');
delete_option('adminHeaderNote_X');
delete_site_option('adminHeaderNote_X');
delete_option('adminHeaderNote_Y');
delete_site_option('adminHeaderNote_Y');
delete_option('adminHeaderNote_color');
delete_site_option('adminHeaderNote_color');

