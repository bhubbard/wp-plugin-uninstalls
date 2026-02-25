<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('skolmaten_texten');
delete_site_option('skolmaten_texten');
delete_option('skolmaten_adresses');
delete_site_option('skolmaten_adresses');

// Delete Transients
delete_transient('snillrik_skolmaten_data');
delete_site_transient('snillrik_skolmaten_data');

