<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webidextrous_time_delayed_redirects_option');
delete_site_option('webidextrous_time_delayed_redirects_option');
delete_option('webidextrous_time_delayed_redirects_network_option');
delete_site_option('webidextrous_time_delayed_redirects_network_option');

// Delete Transients
delete_transient('webidextrous_time_delayed_redirects_cache');
delete_site_transient('webidextrous_time_delayed_redirects_cache');
delete_transient('webidextrous_time_delayed_redirects_debug');
delete_site_transient('webidextrous_time_delayed_redirects_debug');

