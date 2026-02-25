<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hidden_user_options');
delete_site_option('hidden_user_options');
delete_option('hidden_plugin_options');
delete_site_option('hidden_plugin_options');

