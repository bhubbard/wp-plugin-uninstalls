<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stocktech_alerts_options');
delete_site_option('stocktech_alerts_options');
delete_option('stocktech_alerts_my_plugin_do_activation_redirect');
delete_site_option('stocktech_alerts_my_plugin_do_activation_redirect');

