<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tinysolutions_pqe_settings');
delete_site_option('tinysolutions_pqe_settings');
delete_option('tinysolutions_pqe_plugin_version');
delete_site_option('tinysolutions_pqe_plugin_version');
delete_option('tinysolutions_pqe_plugin_activation_time');
delete_site_option('tinysolutions_pqe_plugin_activation_time');

