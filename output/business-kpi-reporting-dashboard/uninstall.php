<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');

