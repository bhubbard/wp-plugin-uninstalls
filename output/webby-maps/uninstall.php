<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webbymaps_markerIconsFile');
delete_site_option('webbymaps_markerIconsFile');

