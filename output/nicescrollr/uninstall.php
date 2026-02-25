<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nicescrollr_options');
delete_site_option('nicescrollr_options');

// Delete Transients
delete_transient('nicescrollr_validation_transient');
delete_site_transient('nicescrollr_validation_transient');

