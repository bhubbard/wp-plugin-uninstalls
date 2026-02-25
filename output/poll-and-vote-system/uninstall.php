<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pvs_settings_data');
delete_site_option('pvs_settings_data');
delete_option('pvs_listening_settings');
delete_site_option('pvs_listening_settings');
delete_option('pvs_customize_settings');
delete_site_option('pvs_customize_settings');

