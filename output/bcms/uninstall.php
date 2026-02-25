<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bcms_insert_related');
delete_site_option('bcms_insert_related');
delete_option('bcms_searchsmart');
delete_site_option('bcms_searchsmart');
delete_option('bcms_swhl');
delete_site_option('bcms_swhl');
delete_option('bcms_managefocus_month');
delete_site_option('bcms_managefocus_month');
delete_option('bcms_managefocus_author');
delete_site_option('bcms_managefocus_author');
delete_option('widget_postloop');
delete_site_option('widget_postloop');
delete_option('widget_responseloop');
delete_site_option('widget_responseloop');
delete_option('bcms_search_options');
delete_site_option('bcms_search_options');
delete_option('bsuite_site_privacy');
delete_site_option('bsuite_site_privacy');

