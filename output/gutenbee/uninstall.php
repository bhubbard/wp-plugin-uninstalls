<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gutenbee_settings');
delete_site_option('gutenbee_settings');
delete_option('gutenbee_general_settings');
delete_site_option('gutenbee_general_settings');

