<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('purechat_plugin_ver');
delete_site_option('purechat_plugin_ver');
delete_option('purechat_widget_code');
delete_site_option('purechat_widget_code');
delete_option('purechat_widget_name');
delete_site_option('purechat_widget_name');

