<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nuway_widget_id');
delete_site_option('nuway_widget_id');

// Delete Transients
delete_transient('nuway_error');
delete_site_transient('nuway_error');

