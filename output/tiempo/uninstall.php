<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tiempo_global_settings');
delete_site_option('tiempo_global_settings');
delete_option('tiempo_options');
delete_site_option('tiempo_options');

