<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scroll_top_plugin_settings');
delete_site_option('scroll_top_plugin_settings');

