<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pride_bar_option');
delete_site_option('pride_bar_option');
delete_option('pride_bar_position');
delete_site_option('pride_bar_position');

