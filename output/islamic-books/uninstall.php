<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edc_category_id');
delete_site_option('edc_category_id');
delete_option('edc_view_js');
delete_site_option('edc_view_js');
delete_option('edc_categoty_title');
delete_site_option('edc_categoty_title');

