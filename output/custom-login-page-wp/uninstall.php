<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seed_cl_customizer_settings');
delete_site_option('seed_cl_customizer_settings');
delete_option('seed_cl_settings_1');
delete_site_option('seed_cl_settings_1');
delete_option('seed_cl_settings_2');
delete_site_option('seed_cl_settings_2');
delete_option('seed_cl_settings_4');
delete_site_option('seed_cl_settings_4');
delete_option('seed_cl_settings_content');
delete_site_option('seed_cl_settings_content');

// Delete Transients
delete_transient('_seed_cl_welcome_screen_activation_redirect');
delete_site_transient('_seed_cl_welcome_screen_activation_redirect');

