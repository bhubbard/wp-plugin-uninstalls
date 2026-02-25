<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tournamatch_options');
delete_site_option('tournamatch_options');

// Delete Transients
delete_transient('trn_online_users');
delete_site_transient('trn_online_users');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

