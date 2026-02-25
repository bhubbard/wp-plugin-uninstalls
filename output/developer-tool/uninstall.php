<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dev_tool_plugin_redirect');
delete_site_option('dev_tool_plugin_redirect');

