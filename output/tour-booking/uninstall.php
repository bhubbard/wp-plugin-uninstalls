<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tourbooking_options');
delete_site_option('tourbooking_options');
delete_option('tourbooking_colors');
delete_site_option('tourbooking_colors');
delete_option('tourbooking_messages');
delete_site_option('tourbooking_messages');

