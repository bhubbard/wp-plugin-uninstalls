<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shipbubble_options');
delete_site_option('shipbubble_options');
delete_option('shipbubble_db_update_time');
delete_site_option('shipbubble_db_update_time');
delete_option('shipbubble_first_time_redirection');
delete_site_option('shipbubble_first_time_redirection');

