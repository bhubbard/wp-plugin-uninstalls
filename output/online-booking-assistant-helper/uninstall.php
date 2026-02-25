<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('OBAFirstContactSmall');
delete_site_option('OBAFirstContactSmall');
delete_option('OBAFirstContactMedium');
delete_site_option('OBAFirstContactMedium');
delete_option('OBAFirstContactLarge');
delete_site_option('OBAFirstContactLarge');
delete_option('OBAReserveADate');
delete_site_option('OBAReserveADate');
delete_option('OBAFeedback');
delete_site_option('OBAFeedback');

