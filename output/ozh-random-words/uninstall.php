<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ozh_randomwords_status');
delete_site_option('ozh_randomwords_status');
delete_option('ozh_randomwords');
delete_site_option('ozh_randomwords');

