<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imagprfo_tracking_optin');
delete_site_option('imagprfo_tracking_optin');
delete_option('imagprfo_plugin_version');
delete_site_option('imagprfo_plugin_version');
delete_option('image_preview_for_acf_field_settings');
delete_site_option('image_preview_for_acf_field_settings');

