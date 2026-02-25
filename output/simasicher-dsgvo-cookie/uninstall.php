<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sima_eucookie');
delete_site_option('sima_eucookie');
delete_option('ecl_version_number');
delete_site_option('ecl_version_number');
delete_option('sima_version_number');
delete_site_option('sima_version_number');

