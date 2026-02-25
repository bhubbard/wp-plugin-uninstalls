<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('caos_settings');
delete_site_option('caos_settings');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

