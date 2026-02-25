<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpst_country_selected');
delete_site_option('wpst_country_selected');
delete_option('wpst_suggestions_limit');
delete_site_option('wpst_suggestions_limit');
delete_option('wpst_sortfield');
delete_site_option('wpst_sortfield');
delete_option('wpst_sorttype');
delete_site_option('wpst_sorttype');
delete_option('wpst_api_key');
delete_site_option('wpst_api_key');
delete_option('wpst_countries');
delete_site_option('wpst_countries');

