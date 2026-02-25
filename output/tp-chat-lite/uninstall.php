<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpcl_phone_option');
delete_site_option('tpcl_phone_option');
delete_option('tpcl_support_option');
delete_site_option('tpcl_support_option');
delete_option('tpcl_plugin_do_activation_redirect');
delete_site_option('tpcl_plugin_do_activation_redirect');
delete_option('tpcl_installed');
delete_site_option('tpcl_installed');

