<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mpost_slider');
delete_site_option('mpost_slider');
delete_option('mpost_post_design');
delete_site_option('mpost_post_design');
delete_option('mpost_slider_design');
delete_site_option('mpost_slider_design');
delete_option('mpost_background_color');
delete_site_option('mpost_background_color');
delete_option('mpost_title_color');
delete_site_option('mpost_title_color');
delete_option('mpost_desc_color');
delete_site_option('mpost_desc_color');
delete_option('mpost_btn_title');
delete_site_option('mpost_btn_title');
delete_option('mpost_btnbg_color');
delete_site_option('mpost_btnbg_color');
delete_option('mpost_btn_color');
delete_site_option('mpost_btn_color');
delete_option('mpost_date_format');
delete_site_option('mpost_date_format');
delete_option('mpost_default_image_radius');
delete_site_option('mpost_default_image_radius');
delete_option('mpost_padding_type');
delete_site_option('mpost_padding_type');
delete_option('mpost_default_image_padding');
delete_site_option('mpost_default_image_padding');
delete_option('mpost_default_image_margin');
delete_site_option('mpost_default_image_margin');
delete_option('mpost_bootstrap');
delete_site_option('mpost_bootstrap');
delete_option('mpost_no_post');
delete_site_option('mpost_no_post');
delete_option('mpost_container_size');
delete_site_option('mpost_container_size');
delete_option('mpost_arrows_color');
delete_site_option('mpost_arrows_color');
delete_option('mpost_arrows_bgcolor');
delete_site_option('mpost_arrows_bgcolor');

