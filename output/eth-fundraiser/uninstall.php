<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eth_fundraiser_version');
delete_site_option('eth_fundraiser_version');
delete_option('eth_fundraiser_address');
delete_site_option('eth_fundraiser_address');
delete_option('eth_fundraiser_banner_background');
delete_site_option('eth_fundraiser_banner_background');
delete_option('eth_fundraiser_title');
delete_site_option('eth_fundraiser_title');
delete_option('eth_fundraiser_title_color');
delete_site_option('eth_fundraiser_title_color');
delete_option('eth_fundraiser_svg_circle');
delete_site_option('eth_fundraiser_svg_circle');
delete_option('eth_fundraiser_svg_eth_icon');
delete_site_option('eth_fundraiser_svg_eth_icon');
delete_option('eth_fundraiser_button_background');
delete_site_option('eth_fundraiser_button_background');
delete_option('eth_fundraiser_close_btn_color');
delete_site_option('eth_fundraiser_close_btn_color');
delete_option('eth_fundraiser_eth_price_color');
delete_site_option('eth_fundraiser_eth_price_color');
delete_option('eth_fundraiser_banner');
delete_site_option('eth_fundraiser_banner');
delete_option('eth_fundraiser_button_text');
delete_site_option('eth_fundraiser_button_text');

