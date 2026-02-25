<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('capture_heartrails_plugin');
delete_site_option('capture_heartrails_plugin');
delete_option('capture_heartrails_plugin_template');
delete_site_option('capture_heartrails_plugin_template');
delete_option('capture_heartrails_plugin_option');
delete_site_option('capture_heartrails_plugin_option');

