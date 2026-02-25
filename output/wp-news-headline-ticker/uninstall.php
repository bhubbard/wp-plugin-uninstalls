<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpnhtp_post_category');
delete_site_option('wpnhtp_post_category');
delete_option('wpnhtp_effect');
delete_site_option('wpnhtp_effect');
delete_option('wpnhtp_number_post');
delete_site_option('wpnhtp_number_post');
delete_option('wpnhtp_order');
delete_site_option('wpnhtp_order');
delete_option('wpnhtp_border_radius');
delete_site_option('wpnhtp_border_radius');
delete_option('wpnhtp_label');
delete_site_option('wpnhtp_label');
delete_option('wpnhtp_label_color');
delete_site_option('wpnhtp_label_color');
delete_option('wpnhtp_bg_color');
delete_site_option('wpnhtp_bg_color');
delete_option('wpnhtp_text_color');
delete_site_option('wpnhtp_text_color');
delete_option('wpnhtp_hover_color');
delete_site_option('wpnhtp_hover_color');
delete_option('wpnhtp_plugin_do_activation_redirect');
delete_site_option('wpnhtp_plugin_do_activation_redirect');

