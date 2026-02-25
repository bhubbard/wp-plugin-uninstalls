<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('readmore_btn_bg');
delete_site_option('readmore_btn_bg');
delete_option('readmore_btn_bg_hover');
delete_site_option('readmore_btn_bg_hover');
delete_option('readmore_btn_color');
delete_site_option('readmore_btn_color');
delete_option('readmore_btn_color_hover');
delete_site_option('readmore_btn_color_hover');
delete_option('readmore_btn_size');
delete_site_option('readmore_btn_size');
delete_option('readmore_btn_padding');
delete_site_option('readmore_btn_padding');

