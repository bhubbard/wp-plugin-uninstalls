<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stsc_Elements');
delete_site_option('stsc_Elements');
delete_option('stsc_min_screen');
delete_site_option('stsc_min_screen');

