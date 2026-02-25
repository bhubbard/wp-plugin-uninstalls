<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rsAdmin_Player');
delete_site_option('rsAdmin_Player');
delete_option('rsAdmin_CacheDur');
delete_site_option('rsAdmin_CacheDur');

// Delete Transients
delete_transient('cached_dribbble_shots');
delete_site_transient('cached_dribbble_shots');

