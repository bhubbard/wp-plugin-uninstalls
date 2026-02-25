<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpflickr_token');
delete_site_option('wpflickr_token');
delete_option('wpflickr_alt_title');
delete_site_option('wpflickr_alt_title');
delete_option('wpflickr_nsid');
delete_site_option('wpflickr_nsid');

