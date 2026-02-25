<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('user-location-and-ip-activate');
delete_site_transient('user-location-and-ip-activate');

