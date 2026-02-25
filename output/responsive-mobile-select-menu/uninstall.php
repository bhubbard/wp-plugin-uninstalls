<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('responsive_mobile_select_version');
delete_site_option('responsive_mobile_select_version');
delete_option('rms_plugin_settings_v2');
delete_site_option('rms_plugin_settings_v2');
delete_option('responsive_mobile_select_update_completed');
delete_site_option('responsive_mobile_select_update_completed');

