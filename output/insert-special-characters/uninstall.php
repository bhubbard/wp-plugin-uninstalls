<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tenup_isc_most_read_palette');
delete_site_option('tenup_isc_most_read_palette');

