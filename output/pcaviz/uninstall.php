<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pcaviz_plugin_deferred_admin_notices');
delete_site_option('pcaviz_plugin_deferred_admin_notices');
delete_option('pcaviz_option_name');
delete_site_option('pcaviz_option_name');

