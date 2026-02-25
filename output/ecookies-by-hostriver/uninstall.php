<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ecookies_hostriver_google_tag_manager_id');
delete_site_option('ecookies_hostriver_google_tag_manager_id');
delete_option('ecookies_hostriver_selected_layout');
delete_site_option('ecookies_hostriver_selected_layout');
delete_option('ecookies_hostriver_modalPosition');
delete_site_option('ecookies_hostriver_modalPosition');
delete_option('ecookies_hostriver_disable_page_interaction');
delete_site_option('ecookies_hostriver_disable_page_interaction');
delete_option('ecookies_hostriver_flip_buttons');
delete_site_option('ecookies_hostriver_flip_buttons');
delete_option('ecookies_hostriver_weight_buttons');
delete_site_option('ecookies_hostriver_weight_buttons');
delete_option('ecookies_hostriver_theme_color');
delete_site_option('ecookies_hostriver_theme_color');

