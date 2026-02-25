<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rp_title');
delete_site_option('rp_title');
delete_option('rp_show_type');
delete_site_option('rp_show_type');
delete_option('rp_slider_type');
delete_site_option('rp_slider_type');
delete_option('rp_number_related_products');
delete_site_option('rp_number_related_products');
delete_option('rp_number_related_products_columns');
delete_site_option('rp_number_related_products_columns');
delete_option('rp_related_products_by');
delete_site_option('rp_related_products_by');
delete_option('rp_slider_auto_play');
delete_site_option('rp_slider_auto_play');
delete_option('rp_slider_navigation');
delete_site_option('rp_slider_navigation');
delete_option('rp_slider_navigation_position');
delete_site_option('rp_slider_navigation_position');
delete_option('rp_slider_pagination');
delete_site_option('rp_slider_pagination');
delete_option('rp_slider_pagination_number');
delete_site_option('rp_slider_pagination_number');
delete_option('rp_slider_navigation_prev_text');
delete_site_option('rp_slider_navigation_prev_text');
delete_option('rp_slider_navigation_next_text');
delete_site_option('rp_slider_navigation_next_text');
delete_option('rp_slider_direction');
delete_site_option('rp_slider_direction');

