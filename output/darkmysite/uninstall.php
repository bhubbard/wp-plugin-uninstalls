<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('darkmysite_activation_date');
delete_site_option('darkmysite_activation_date');
delete_option('darkmysite_settings');
delete_site_option('darkmysite_settings');

