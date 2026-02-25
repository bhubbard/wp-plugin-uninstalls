<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('taros_bot_id');
delete_site_option('taros_bot_id');
delete_option('taros_bot_name');
delete_site_option('taros_bot_name');
delete_option('taros_widget_enabled');
delete_site_option('taros_widget_enabled');

