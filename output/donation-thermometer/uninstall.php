<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thermometer_options');
delete_site_option('thermometer_options');
delete_option('thermometer_style');
delete_site_option('thermometer_style');

// Delete Transients
delete_transient('therm_activation_notice');
delete_site_transient('therm_activation_notice');

