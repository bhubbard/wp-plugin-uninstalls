<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wb_ffb_form_shortcode');
delete_site_option('wb_ffb_form_shortcode');
delete_option('wb_ffb_bubble_style');
delete_site_option('wb_ffb_bubble_style');
delete_option('wb_ffb_custom_css');
delete_site_option('wb_ffb_custom_css');
delete_option('wb_ffb_bubble_text');
delete_site_option('wb_ffb_bubble_text');

