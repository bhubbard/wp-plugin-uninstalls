<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kpsp_org_logo');
delete_site_option('kpsp_org_logo');
delete_option('kpsp_business_type');
delete_site_option('kpsp_business_type');
delete_option('kpsp_org_name');
delete_site_option('kpsp_org_name');
delete_option('kpsp_org_url');
delete_site_option('kpsp_org_url');
delete_option('kpsp_org_phone');
delete_site_option('kpsp_org_phone');
delete_option('kpsp_org_contact_type');
delete_site_option('kpsp_org_contact_type');
delete_option('kpsp_org_language');
delete_site_option('kpsp_org_language');
delete_option('kpsp_facebook');
delete_site_option('kpsp_facebook');
delete_option('kpsp_instagram');
delete_site_option('kpsp_instagram');
delete_option('kpsp_linkedin');
delete_site_option('kpsp_linkedin');
delete_option('kpsp_twitter');
delete_site_option('kpsp_twitter');
delete_option('kpsp_youtube');
delete_site_option('kpsp_youtube');
delete_option('kpsp_tiktok');
delete_site_option('kpsp_tiktok');
delete_option('kpsp_google_api_key');
delete_site_option('kpsp_google_api_key');
delete_option('kpsp_google_place_id');
delete_site_option('kpsp_google_place_id');
delete_option('kpsp_enable_reviews');
delete_site_option('kpsp_enable_reviews');
delete_option('kpsp_services_csv');
delete_site_option('kpsp_services_csv');
delete_option('kpsp_locations');
delete_site_option('kpsp_locations');
delete_option('kpsp_faq_items');
delete_site_option('kpsp_faq_items');
delete_option('kpsp_weekly_hours');
delete_site_option('kpsp_weekly_hours');
delete_option('kpsp_special_hours');
delete_site_option('kpsp_special_hours');
delete_option('kpsp_products_rows');
delete_site_option('kpsp_products_rows');
delete_option('kpsp_courses_rows');
delete_site_option('kpsp_courses_rows');
delete_option('kpsp_faq_urls');
delete_site_option('kpsp_faq_urls');
delete_option('kpsp_products_urls');
delete_site_option('kpsp_products_urls');
delete_option('kpsp_courses_urls');
delete_site_option('kpsp_courses_urls');

