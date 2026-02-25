<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rh_transition');
delete_site_option('rh_transition');
delete_option('rh_duration');
delete_site_option('rh_duration');
delete_option('rh_transition_type');
delete_site_option('rh_transition_type');

