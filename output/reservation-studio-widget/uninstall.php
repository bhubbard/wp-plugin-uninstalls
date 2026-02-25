<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'rs_widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rs_widget_version');
delete_site_option('rs_widget_version');
delete_option('rs_widget_enabled');
delete_site_option('rs_widget_enabled');
delete_option('rs_widget_page_type');
delete_site_option('rs_widget_page_type');
delete_option('rs_widget_slug');
delete_site_option('rs_widget_slug');
delete_option('rs_widget_language');
delete_site_option('rs_widget_language');
delete_option('rs_widget_sticky_button_enabled');
delete_site_option('rs_widget_sticky_button_enabled');
delete_option('rs_widget_sticky_button_text');
delete_site_option('rs_widget_sticky_button_text');
delete_option('rs_widget_sticky_button_text_color');
delete_site_option('rs_widget_sticky_button_text_color');
delete_option('rs_widget_sticky_button_Background_color');
delete_site_option('rs_widget_sticky_button_Background_color');
delete_option('rs_widget_sticky_button_position');
delete_site_option('rs_widget_sticky_button_position');
delete_option('rs_widget_sticky_tooltip_text');
delete_site_option('rs_widget_sticky_tooltip_text');
delete_option('rs_widget_sticky_tooltip_show_delay');
delete_site_option('rs_widget_sticky_tooltip_show_delay');
delete_option('rs_widget_sticky_tooltip_expire_time');
delete_site_option('rs_widget_sticky_tooltip_expire_time');
delete_option('rs_widget_buttons_selector');
delete_site_option('rs_widget_buttons_selector');
delete_option('rs_widget_modal_max_width');
delete_site_option('rs_widget_modal_max_width');
delete_option('rs_widget_modal_max_height');
delete_site_option('rs_widget_modal_max_height');

