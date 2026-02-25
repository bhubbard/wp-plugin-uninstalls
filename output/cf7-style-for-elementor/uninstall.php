<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('goat_elementor_cf7_addon_button_text_color');
delete_site_option('goat_elementor_cf7_addon_button_text_color');
delete_option('goat_elementor_cf7_addon_button_background_color');
delete_site_option('goat_elementor_cf7_addon_button_background_color');

