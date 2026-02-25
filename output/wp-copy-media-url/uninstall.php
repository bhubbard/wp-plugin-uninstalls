<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_cmu_button_text');
delete_site_option('wp_cmu_button_text');
delete_option('wp_cmu_button_text_copied');
delete_site_option('wp_cmu_button_text_copied');
delete_option('wp_cmu_button_color');
delete_site_option('wp_cmu_button_color');
delete_option('wp_cmu_button_text_color');
delete_site_option('wp_cmu_button_text_color');
delete_option('wp_cmu_link_text');
delete_site_option('wp_cmu_link_text');
delete_option('wp_cmu_link_text_copied');
delete_site_option('wp_cmu_link_text_copied');
delete_option('wp_cmu_link_text_color');
delete_site_option('wp_cmu_link_text_color');

