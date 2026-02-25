<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('selectcategory_css');
delete_site_option('selectcategory_css');
delete_option('selectcategory_order');
delete_site_option('selectcategory_order');
delete_option('selectcategory_num');
delete_site_option('selectcategory_num');
delete_option('selectcategory_maxnum');
delete_site_option('selectcategory_maxnum');
delete_option('selectcategory_minnum');
delete_site_option('selectcategory_minnum');

