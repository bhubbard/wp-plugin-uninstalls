<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('virtualwindow_blocks_plugin_deactivated');
delete_site_option('virtualwindow_blocks_plugin_deactivated');

