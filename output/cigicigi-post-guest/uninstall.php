<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cigicigi_post_guest_db_version');
delete_site_option('cigicigi_post_guest_db_version');
delete_option('cigicigi_post_guest_options');
delete_site_option('cigicigi_post_guest_options');
delete_option('cigicigi_post_guest_count');
delete_site_option('cigicigi_post_guest_count');

