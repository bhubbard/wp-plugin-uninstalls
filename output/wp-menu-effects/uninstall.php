<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpme_hover_effect');
delete_site_option('wpme_hover_effect');
delete_option('wpme_selected_menu');
delete_site_option('wpme_selected_menu');
delete_option('wpme_apply_to_submenus');
delete_site_option('wpme_apply_to_submenus');
delete_option('wpme_normal_text_color');
delete_site_option('wpme_normal_text_color');
delete_option('wpme_hover_text_color');
delete_site_option('wpme_hover_text_color');
delete_option('wpme_normal_background_color');
delete_site_option('wpme_normal_background_color');
delete_option('wpme_hover_background_color');
delete_site_option('wpme_hover_background_color');
delete_option('wpme_normal_border_color');
delete_site_option('wpme_normal_border_color');
delete_option('wpme_hover_border_color');
delete_site_option('wpme_hover_border_color');

