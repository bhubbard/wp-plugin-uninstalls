<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enable_on_woocommerce');
delete_site_option('enable_on_woocommerce');
delete_option('enable_on_shopp');
delete_site_option('enable_on_shopp');
delete_option('enable_on_gform');
delete_site_option('enable_on_gform');
delete_option('selected_gform');
delete_site_option('selected_gform');
delete_option('gform_phone_field_id');
delete_site_option('gform_phone_field_id');
delete_option('enable_on_cform7');
delete_site_option('enable_on_cform7');
delete_option('selected_cform7');
delete_site_option('selected_cform7');
delete_option('cform7_phone_field_id');
delete_site_option('cform7_phone_field_id');
delete_option('show_selected');
delete_site_option('show_selected');
delete_option('selected_countries');
delete_site_option('selected_countries');
delete_option('initial_country');
delete_site_option('initial_country');

