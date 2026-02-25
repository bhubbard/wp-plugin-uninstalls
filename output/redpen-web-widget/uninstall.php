<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('redpen_option_name');
delete_site_option('redpen_option_name');
delete_option('widget_Id');
delete_site_option('widget_Id');
delete_option('redpen_plugin_notice');
delete_site_option('redpen_plugin_notice');

