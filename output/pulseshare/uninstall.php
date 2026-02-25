<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pulseshare_options');
delete_site_option('pulseshare_options');

// Delete Transients
delete_transient('pulseshare_access_token');
delete_site_transient('pulseshare_access_token');

