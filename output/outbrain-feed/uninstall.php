<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('obfeed_plugin_mode');
delete_site_option('obfeed_plugin_mode');
delete_option('obfeed_plugin_status');
delete_site_option('obfeed_plugin_status');

