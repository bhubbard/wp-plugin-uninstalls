<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webchatagent_settings');
delete_site_option('webchatagent_settings');

// Delete Transients
delete_transient('webchatagent_transient_data');
delete_site_transient('webchatagent_transient_data');

