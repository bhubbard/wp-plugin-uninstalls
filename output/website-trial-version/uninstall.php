<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbst_tvs_box_end_date');
delete_site_option('wbst_tvs_box_end_date');
delete_option('wbst_tvs_box_position');
delete_site_option('wbst_tvs_box_position');
delete_option('wbst_tvs_box_bg_color');
delete_site_option('wbst_tvs_box_bg_color');
delete_option('wbst_tvs_box_color');
delete_site_option('wbst_tvs_box_color');
delete_option('wbst_tvs_box_text');
delete_site_option('wbst_tvs_box_text');
delete_option('wbst_tvs_box_hide');
delete_site_option('wbst_tvs_box_hide');
delete_option('wbst_tvs_box_once_time');
delete_site_option('wbst_tvs_box_once_time');
delete_option('wbst_tvs_box_message');
delete_site_option('wbst_tvs_box_message');

