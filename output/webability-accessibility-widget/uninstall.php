<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webability_options');
delete_site_option('webability_options');

// Delete Transients
delete_transient('webability_widget_cache');
delete_site_transient('webability_widget_cache');

