<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iwllc_wp_logo_url');
delete_site_option('iwllc_wp_logo_url');
delete_option('iwllc_wp_set_bg');
delete_site_option('iwllc_wp_set_bg');
delete_option('iwllc_wp_bg_color');
delete_site_option('iwllc_wp_bg_color');
delete_option('iwllc_wp_bg_img_url');
delete_site_option('iwllc_wp_bg_img_url');
delete_option('iwllc_wp_logo_link');
delete_site_option('iwllc_wp_logo_link');
delete_option('iwllc_wp_link_color');
delete_site_option('iwllc_wp_link_color');
delete_option('iwllc_wp_link_hover_color');
delete_site_option('iwllc_wp_link_hover_color');
delete_option('iwllc_wp_logo_width');
delete_site_option('iwllc_wp_logo_width');
delete_option('iwllc_wp_logo_height');
delete_site_option('iwllc_wp_logo_height');

