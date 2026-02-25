<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('mesi_cache_home_pending');
delete_site_transient('mesi_cache_home_pending');

