<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpforms_status');
delete_site_option('wpforms_status');
delete_option('cf7ic-ajax');
delete_site_option('cf7ic-ajax');
delete_option('cf7ic_plugin_do_activation_redirect');
delete_site_option('cf7ic_plugin_do_activation_redirect');
delete_option('cf7ic_timestamp');
delete_site_option('cf7ic_timestamp');

