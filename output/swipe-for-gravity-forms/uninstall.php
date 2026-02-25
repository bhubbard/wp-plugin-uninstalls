<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('swipego_access_token');
delete_site_transient('swipego_access_token');
delete_transient('swipego_integration');
delete_site_transient('swipego_integration');

