<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tx_valid_options');
delete_site_option('tx_valid_options');

// Delete Transients
delete_transient('taxonomies_essentials_activate_redirect');
delete_site_transient('taxonomies_essentials_activate_redirect');

