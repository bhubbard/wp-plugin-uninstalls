<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('psb_display_product_share_button');
delete_site_option('psb_display_product_share_button');
delete_option('psb_buttons_visible_position');
delete_site_option('psb_buttons_visible_position');
delete_option('psb_button_design');
delete_site_option('psb_button_design');
delete_option('blank_tab_enable');
delete_site_option('blank_tab_enable');
delete_option('psb_social_buttons');
delete_site_option('psb_social_buttons');

