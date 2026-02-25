<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recently_activated');
delete_site_option('recently_activated');

// Delete Transients
delete_transient('plugins_list');
delete_site_transient('plugins_list');
delete_transient('artiss_plugins_list');
delete_site_transient('artiss_plugins_list');

