<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wshs_disable_plugin_styles');
delete_site_option('wshs_disable_plugin_styles');
delete_option('wshs_db_version');
delete_site_option('wshs_db_version');

