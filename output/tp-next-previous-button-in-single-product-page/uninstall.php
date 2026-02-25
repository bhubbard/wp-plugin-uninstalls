<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpnpb_activate_next_previous');
delete_site_option('tpnpb_activate_next_previous');
delete_option('tpnpb_activate_next_previous_mobile');
delete_site_option('tpnpb_activate_next_previous_mobile');
delete_option('tpnpb_label_previous');
delete_site_option('tpnpb_label_previous');
delete_option('tpnpb_label_next');
delete_site_option('tpnpb_label_next');
delete_option('tpnpb_buttons_position');
delete_site_option('tpnpb_buttons_position');
delete_option('tpnpb_buttons_color');
delete_site_option('tpnpb_buttons_color');
delete_option('tpnpb_buttons_border');
delete_site_option('tpnpb_buttons_border');
delete_option('tpnpb_buttons_font_size');
delete_site_option('tpnpb_buttons_font_size');
delete_option('tpnpb_buttons_icons');
delete_site_option('tpnpb_buttons_icons');
delete_option('tpnpb_custom_css');
delete_site_option('tpnpb_custom_css');
delete_option('tpnpb_add_product_image');
delete_site_option('tpnpb_add_product_image');
delete_option('tpnpb_add_product_name');
delete_site_option('tpnpb_add_product_name');
delete_option('tpnpb_product_image_size');
delete_site_option('tpnpb_product_image_size');

