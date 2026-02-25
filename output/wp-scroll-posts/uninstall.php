<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsp_nop');
delete_site_option('wpsp_nop');
delete_option('wpsp_nops');
delete_site_option('wpsp_nops');
delete_option('wpsp_mnop');
delete_site_option('wpsp_mnop');
delete_option('wpsp_cat');
delete_site_option('wpsp_cat');
delete_option('wpsp_direction');
delete_site_option('wpsp_direction');
delete_option('wpsp_readmore');
delete_site_option('wpsp_readmore');
delete_option('wpsp_enable');
delete_site_option('wpsp_enable');
delete_option('wpsp_mousepause');
delete_site_option('wpsp_mousepause');
delete_option('wpsp_speed');
delete_site_option('wpsp_speed');
delete_option('wpsp_ptime');
delete_site_option('wpsp_ptime');
delete_option('wpsp_thumbnail_enable');
delete_site_option('wpsp_thumbnail_enable');
delete_option('wpsp_title_enable');
delete_site_option('wpsp_title_enable');
delete_option('wpsp_date_enable');
delete_site_option('wpsp_date_enable');
delete_option('wpsp_excerpt_enable');
delete_site_option('wpsp_excerpt_enable');
delete_option('wpsp_readmore_enable');
delete_site_option('wpsp_readmore_enable');
delete_option('wpsp_c_len');
delete_site_option('wpsp_c_len');

