<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mgb_where_show');
delete_site_option('mgb_where_show');
delete_option('mgb_show_image');
delete_site_option('mgb_show_image');
delete_option('mgb_brand_title');
delete_site_option('mgb_brand_title');
delete_option('mgb_detail_position');
delete_site_option('mgb_detail_position');
delete_option('mgb_category_position');
delete_site_option('mgb_category_position');

