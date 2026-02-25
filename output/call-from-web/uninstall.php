<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfw_pairing_token');
delete_site_option('cfw_pairing_token');
delete_option('cfw_pairing_callback_token');
delete_site_option('cfw_pairing_callback_token');
delete_option('cfw_secret_key');
delete_site_option('cfw_secret_key');
delete_option('cfw_plugin_options');
delete_site_option('cfw_plugin_options');

