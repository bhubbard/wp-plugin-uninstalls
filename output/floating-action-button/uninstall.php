<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fz_fab_activate');
delete_site_option('fz_fab_activate');
delete_option('fz_fab_type');
delete_site_option('fz_fab_type');
delete_option('fz_fab_position');
delete_site_option('fz_fab_position');
delete_option('fz_fab_main_img_id');
delete_site_option('fz_fab_main_img_id');
delete_option('fz_fab_main_color');
delete_site_option('fz_fab_main_color');
delete_option('fz_fab_main_bg_color');
delete_site_option('fz_fab_main_bg_color');
delete_option('fz_fab_sub_btns');
delete_site_option('fz_fab_sub_btns');

