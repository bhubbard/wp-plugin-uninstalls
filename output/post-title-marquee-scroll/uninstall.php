<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptms_scrollamount');
delete_site_option('ptms_scrollamount');
delete_option('ptms_scrolldelay');
delete_site_option('ptms_scrolldelay');
delete_option('ptms_direction');
delete_site_option('ptms_direction');
delete_option('ptms_style');
delete_site_option('ptms_style');
delete_option('ptms_noofpost');
delete_site_option('ptms_noofpost');
delete_option('ptms_categories');
delete_site_option('ptms_categories');
delete_option('ptms_orderbys');
delete_site_option('ptms_orderbys');
delete_option('ptms_order');
delete_site_option('ptms_order');
delete_option('ptms_spliter');
delete_site_option('ptms_spliter');
delete_option('ptms_title');
delete_site_option('ptms_title');

