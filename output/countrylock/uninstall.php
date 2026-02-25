<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tscl_show_activation_notice');
delete_site_option('tscl_show_activation_notice');
delete_option('tscl_settings');
delete_site_option('tscl_settings');
delete_option('cl_settings');
delete_site_option('cl_settings');
delete_option('cl_show_activation_notice');
delete_site_option('cl_show_activation_notice');

