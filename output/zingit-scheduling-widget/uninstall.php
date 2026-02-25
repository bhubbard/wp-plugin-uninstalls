<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zsw_plugin_do_activation_redirect');
delete_site_option('zsw_plugin_do_activation_redirect');
delete_option('z2_api_key');
delete_site_option('z2_api_key');

