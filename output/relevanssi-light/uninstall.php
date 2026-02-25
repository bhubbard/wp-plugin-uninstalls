<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('relevanssi_light');
delete_site_option('relevanssi_light');
delete_option('relevanssi_light_activated');
delete_site_option('relevanssi_light_activated');

