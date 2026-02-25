<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rest_interface_for_wpforms_settings');
delete_site_option('rest_interface_for_wpforms_settings');

