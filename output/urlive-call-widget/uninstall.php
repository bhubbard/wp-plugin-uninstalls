<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('urlive_plugin_options');
delete_site_option('urlive_plugin_options');
delete_option('urlive_plugin_paste_code');
delete_site_option('urlive_plugin_paste_code');

