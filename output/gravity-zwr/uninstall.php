<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('gravityzwr_zoom_token');
delete_site_transient('gravityzwr_zoom_token');

