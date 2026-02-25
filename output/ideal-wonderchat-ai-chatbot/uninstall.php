<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ideal_widget_data_id');
delete_site_option('ideal_widget_data_id');
delete_option('ideal_widget_size');
delete_site_option('ideal_widget_size');
delete_option('ideal_widget_button_size');
delete_site_option('ideal_widget_button_size');
delete_option('ideal_widget_offset_bottom');
delete_site_option('ideal_widget_offset_bottom');
delete_option('ideal_widget_offset_right');
delete_site_option('ideal_widget_offset_right');
delete_option('ideal_widget_lazy_loading');
delete_site_option('ideal_widget_lazy_loading');
delete_option('ideal_disable_posts');
delete_site_option('ideal_disable_posts');
delete_option('ideal_display_admin');
delete_site_option('ideal_display_admin');

