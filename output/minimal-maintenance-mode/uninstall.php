<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maintenance_mode');
delete_site_option('maintenance_mode');
delete_option('maintenance_mode_secret_phrase');
delete_site_option('maintenance_mode_secret_phrase');
delete_option('maintenance_mode_message');
delete_site_option('maintenance_mode_message');
delete_option('maintenance_mode_heading');
delete_site_option('maintenance_mode_heading');

