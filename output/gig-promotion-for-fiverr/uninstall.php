<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('five_r_gig_display_options');
delete_site_option('five_r_gig_display_options');
delete_option('five_r_gig_input_examples');
delete_site_option('five_r_gig_input_examples');

