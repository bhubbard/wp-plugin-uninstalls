<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tdsc_icon_size');
delete_site_option('tdsc_icon_size');
delete_option('tdsc_background_color');
delete_site_option('tdsc_background_color');
delete_option('tdsc_hover_color');
delete_site_option('tdsc_hover_color');
delete_option('tdsc_enable_down');
delete_site_option('tdsc_enable_down');
delete_option('tdsc_enable_top');
delete_site_option('tdsc_enable_top');
delete_option('tdsc_position');
delete_site_option('tdsc_position');
delete_option('tdsc_top_button_icon_url');
delete_site_option('tdsc_top_button_icon_url');
delete_option('tdsc_down_button_icon_url');
delete_site_option('tdsc_down_button_icon_url');
delete_option('tdsc_ackground_color');
delete_site_option('tdsc_ackground_color');

// Delete Transients
delete_transient('tdsc-scroll-activation-notice');
delete_site_transient('tdsc-scroll-activation-notice');

