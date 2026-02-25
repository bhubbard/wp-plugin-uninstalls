<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('admin_custom_font_version');
delete_site_option('admin_custom_font_version');
delete_option('admin_custom_font_family');
delete_site_option('admin_custom_font_family');
delete_option('admin_custom_font_size');
delete_site_option('admin_custom_font_size');
delete_option('admin_custom_font_weight');
delete_site_option('admin_custom_font_weight');

