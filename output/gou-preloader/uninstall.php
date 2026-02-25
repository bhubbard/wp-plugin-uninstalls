<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gpl_configuration_settings');
delete_site_option('gpl_configuration_settings');
delete_option('gpl_global_settings');
delete_site_option('gpl_global_settings');

