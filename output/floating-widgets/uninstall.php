<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('floating_widgets_appreciation');
delete_site_option('floating_widgets_appreciation');
delete_option('floating_widgets_mode');
delete_site_option('floating_widgets_mode');
delete_option('floating_widgets_before_widget');
delete_site_option('floating_widgets_before_widget');
delete_option('floating_widgets_after_widget');
delete_site_option('floating_widgets_after_widget');
delete_option('floating_widgets_before_title');
delete_site_option('floating_widgets_before_title');
delete_option('floating_widgets_after_title');
delete_site_option('floating_widgets_after_title');
delete_option('floating_widgets_title_size');
delete_site_option('floating_widgets_title_size');
delete_option('floating_widgets_title_color');
delete_site_option('floating_widgets_title_color');
delete_option('floating_widgets_posts');
delete_site_option('floating_widgets_posts');
delete_option('floating_widgets_before_section');
delete_site_option('floating_widgets_before_section');
delete_option('floating_widgets_after_section');
delete_site_option('floating_widgets_after_section');
delete_option('floating_widgets_before_content');
delete_site_option('floating_widgets_before_content');
delete_option('floating_widgets_after_content');
delete_site_option('floating_widgets_after_content');
delete_option('floating_widget_float');
delete_site_option('floating_widget_float');
delete_option('floating_widget_width');
delete_site_option('floating_widget_width');
delete_option('floating_widget_padding');
delete_site_option('floating_widget_padding');
delete_option('floating_widget_margin');
delete_site_option('floating_widget_margin');
delete_option('floating_widget_border_width');
delete_site_option('floating_widget_border_width');
delete_option('floating_widget_border_style');
delete_site_option('floating_widget_border_style');
delete_option('floating_widget_border_color');
delete_site_option('floating_widget_border_color');
delete_option('floating_widgets_pages');
delete_site_option('floating_widgets_pages');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'floating_widgets_custom_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

