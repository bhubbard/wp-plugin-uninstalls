<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('doctoreve_wt_uuid');
delete_site_option('doctoreve_wt_uuid');
delete_option('doctoreve_wt_fab_enabled');
delete_site_option('doctoreve_wt_fab_enabled');
delete_option('doctoreve_wt_fab_theme');
delete_site_option('doctoreve_wt_fab_theme');
delete_option('doctoreve_wt_fab_color');
delete_site_option('doctoreve_wt_fab_color');
delete_option('doctoreve_wt_fab_text');
delete_site_option('doctoreve_wt_fab_text');
delete_option('doctoreve_wt_comp_theme');
delete_site_option('doctoreve_wt_comp_theme');
delete_option('doctoreve_wt_comp_accent');
delete_site_option('doctoreve_wt_comp_accent');
delete_option('doctoreve_wt_comp_title');
delete_site_option('doctoreve_wt_comp_title');
delete_option('doctoreve_wt_comp_show_search');
delete_site_option('doctoreve_wt_comp_show_search');
delete_option('doctoreve_wt_comp_show_count');
delete_site_option('doctoreve_wt_comp_show_count');
delete_option('doctoreve_wt_comp_limit');
delete_site_option('doctoreve_wt_comp_limit');

