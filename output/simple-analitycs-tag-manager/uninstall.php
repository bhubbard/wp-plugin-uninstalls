<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kwp_simple_ga_gtm_settings');
delete_site_option('kwp_simple_ga_gtm_settings');

