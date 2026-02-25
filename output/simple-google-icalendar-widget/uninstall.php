<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_ical_options');
delete_site_option('simple_ical_options');
delete_option('simple_ical_block_attrs');
delete_site_option('simple_ical_block_attrs');

