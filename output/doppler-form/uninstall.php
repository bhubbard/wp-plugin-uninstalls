<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dplr_settings');
delete_site_option('dplr_settings');
delete_option('dplr_2_0_updated');
delete_site_option('dplr_2_0_updated');
delete_option('dplr_hub_script');
delete_site_option('dplr_hub_script');
delete_option('dplr_tracking_enabled');
delete_site_option('dplr_tracking_enabled');
delete_option('dplr_wc_consent');
delete_site_option('dplr_wc_consent');
delete_option('dplr_wc_consent_location');
delete_site_option('dplr_wc_consent_location');
delete_option('dplr_wc_consent_text');
delete_site_option('dplr_wc_consent_text');
delete_option('dplr_wc_open_graph_meta');
delete_site_option('dplr_wc_open_graph_meta');
delete_option('dplrwoo_api_connected');
delete_site_option('dplrwoo_api_connected');
delete_option('dplr_subscribers_list');
delete_site_option('dplr_subscribers_list');
delete_option('dplr_learnpress_subscribers_list');
delete_site_option('dplr_learnpress_subscribers_list');
delete_option('dplrwoo_last_synch');
delete_site_option('dplrwoo_last_synch');
delete_option('dplr_version');
delete_site_option('dplr_version');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('widget_dplr_subscription_widget');
delete_site_option('widget_dplr_subscription_widget');
delete_option('widget_dplr_form_widget');
delete_site_option('widget_dplr_form_widget');

