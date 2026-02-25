<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('os_datahub_map_options');
delete_site_option('os_datahub_map_options');

// Delete Transients
delete_transient('osmap-activation-check');
delete_site_transient('osmap-activation-check');

