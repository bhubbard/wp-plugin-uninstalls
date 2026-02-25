<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('riq_options');
delete_site_option('riq_options');

// Delete Transients
delete_transient('riq_jpeg_quality');
delete_site_transient('riq_jpeg_quality');

