<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpati_sticky_bar_background_color');
delete_site_option('wpati_sticky_bar_background_color');
delete_option('wpati_sticky_bar_text_color');
delete_site_option('wpati_sticky_bar_text_color');
delete_option('wpati_sticky_bar_link_color');
delete_site_option('wpati_sticky_bar_link_color');
delete_option('wpati_sticky_bar_link_hover_color');
delete_site_option('wpati_sticky_bar_link_hover_color');
delete_option('wpati_sticky_bar_button_color');
delete_site_option('wpati_sticky_bar_button_color');
delete_option('wpati_sticky_bar_button_text_color');
delete_site_option('wpati_sticky_bar_button_text_color');
delete_option('wpati_sticky_bar_hover_button_color');
delete_site_option('wpati_sticky_bar_hover_button_color');
delete_option('wpati_sticky_bar_hover_button_text_color');
delete_site_option('wpati_sticky_bar_hover_button_text_color');
delete_option('wpati_sticky_bar_location');
delete_site_option('wpati_sticky_bar_location');
delete_option('wpati_sticky_closing_animation');
delete_site_option('wpati_sticky_closing_animation');
delete_option('wpati_sticky_bar_after_close');
delete_site_option('wpati_sticky_bar_after_close');
delete_option('wpati_sticky_bar_after_close_days');
delete_site_option('wpati_sticky_bar_after_close_days');
delete_option('wpati_sticky_opening_animation');
delete_site_option('wpati_sticky_opening_animation');
delete_option('wpati_sticky_opening_delay');
delete_site_option('wpati_sticky_opening_delay');
delete_option('wpati_sticky_bar_title');
delete_site_option('wpati_sticky_bar_title');
delete_option('wpati_sticky_bar_content');
delete_site_option('wpati_sticky_bar_content');
delete_option('wpati_sticky_bar_activate_button');
delete_site_option('wpati_sticky_bar_activate_button');
delete_option('wpati_sticky_bar_button_link');
delete_site_option('wpati_sticky_bar_button_link');
delete_option('wpati_sticky_bar_button_label');
delete_site_option('wpati_sticky_bar_button_label');
delete_option('wpati_sticky_bar_activate_close');
delete_site_option('wpati_sticky_bar_activate_close');
delete_option('wpati_sticky_bar_close_label');
delete_site_option('wpati_sticky_bar_close_label');

