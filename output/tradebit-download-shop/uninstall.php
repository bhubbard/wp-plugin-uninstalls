<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tbbitlogin');
delete_site_option('tbbitlogin');
delete_option('tbitpw');
delete_site_option('tbitpw');
delete_option('tbituid');
delete_site_option('tbituid');
delete_option('tbitppal');
delete_site_option('tbitppal');
delete_option('tbitactive');
delete_site_option('tbitactive');

