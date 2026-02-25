<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tfaf_custom_menu_settings');
delete_site_option('tfaf_custom_menu_settings');
delete_option('tfaf_custom_menu');
delete_site_option('tfaf_custom_menu');
delete_option('tfaf_image_upload');
delete_site_option('tfaf_image_upload');
delete_option('tfaf_plugin_settings');
delete_site_option('tfaf_plugin_settings');
delete_option('tfaf_custom_url');
delete_site_option('tfaf_custom_url');

