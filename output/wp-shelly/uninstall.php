<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sos-shelly_dev1');
delete_site_option('sos-shelly_dev1');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

