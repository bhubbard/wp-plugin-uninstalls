<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('espn_headlines_options');
delete_site_option('espn_headlines_options');

// Delete Transients
delete_transient('espn_headlines_admin');
delete_site_transient('espn_headlines_admin');

