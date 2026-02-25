<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('stimasoft-slider-activated');
delete_site_transient('stimasoft-slider-activated');

