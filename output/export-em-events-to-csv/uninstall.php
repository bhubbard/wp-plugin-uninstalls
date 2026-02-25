<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('export-em-events-to-csv-delimiter');
delete_site_option('export-em-events-to-csv-delimiter');

