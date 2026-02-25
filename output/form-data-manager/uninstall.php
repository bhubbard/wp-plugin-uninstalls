<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfdm_plugin_tm_fr_rtg');
delete_site_option('wpfdm_plugin_tm_fr_rtg');

// Delete Transients
delete_transient('wpfdm_plugin_activated');
delete_site_transient('wpfdm_plugin_activated');

