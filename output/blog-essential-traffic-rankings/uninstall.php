<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpetr_website_is_premium');
delete_site_option('bpetr_website_is_premium');
delete_option('blog traffic and rankings config settings');
delete_site_option('blog traffic and rankings config settings');
delete_option('bpetr_property_id');
delete_site_option('bpetr_property_id');
delete_option('bpetr_setting_saved_flash');
delete_site_option('bpetr_setting_saved_flash');
delete_option('bpetr_is_auth');
delete_site_option('bpetr_is_auth');
delete_option('bpetr_username');
delete_site_option('bpetr_username');
delete_option('bpetr_token');
delete_site_option('bpetr_token');
delete_option('bpetr_timeframe');
delete_site_option('bpetr_timeframe');
delete_option('bpetr_ta_all_posts');
delete_site_option('bpetr_ta_all_posts');
delete_option('bpetr_tca_all_posts');
delete_site_option('bpetr_tca_all_posts');
delete_option('bpetr_channel_filter');
delete_site_option('bpetr_channel_filter');
delete_option('bpetr_graphMetric');
delete_site_option('bpetr_graphMetric');
delete_option('bpetr_pp_plan_id');
delete_site_option('bpetr_pp_plan_id');
delete_option('bpetr_pp_plan_price');
delete_site_option('bpetr_pp_plan_price');
delete_option('bpetr_pp_button_client_id');
delete_site_option('bpetr_pp_button_client_id');
delete_option('bpetr_pp_skd_url');
delete_site_option('bpetr_pp_skd_url');

