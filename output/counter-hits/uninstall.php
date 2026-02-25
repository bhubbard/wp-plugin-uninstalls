<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpgear_counter_hits');
delete_site_option('wpgear_counter_hits');
delete_option('wpgear_counter_hits_sign');
delete_site_option('wpgear_counter_hits_sign');

