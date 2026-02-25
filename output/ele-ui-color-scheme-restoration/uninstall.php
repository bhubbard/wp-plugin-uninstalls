<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ele-ui-color-scheme-restoration-settings');
delete_site_option('ele-ui-color-scheme-restoration-settings');
delete_option('light_mode_colors');
delete_site_option('light_mode_colors');
delete_option('dark_mode_colors');
delete_site_option('dark_mode_colors');
delete_option('brand_colors');
delete_site_option('brand_colors');

