<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sa_site_id');
delete_site_option('sa_site_id');
delete_option('sa_review_page_code');
delete_site_option('sa_review_page_code');
delete_option('sa_thankyou_code');
delete_site_option('sa_thankyou_code');
delete_option('sa_seal_code');
delete_site_option('sa_seal_code');
delete_option('sa_step2_status');
delete_site_option('sa_step2_status');
delete_option('sa_api_token');
delete_site_option('sa_api_token');
delete_option('sa_step2b_status');
delete_site_option('sa_step2b_status');
delete_option('sa_survey_token');
delete_site_option('sa_survey_token');
delete_option('sa_step_progress');
delete_site_option('sa_step_progress');
delete_option('sa_step1_status');
delete_site_option('sa_step1_status');
delete_option('sa_step3_status');
delete_site_option('sa_step3_status');
delete_option('sa_step4_status');
delete_site_option('sa_step4_status');
delete_option('sa_step5_status');
delete_site_option('sa_step5_status');
delete_option('sa_step6_status');
delete_site_option('sa_step6_status');
delete_option('sa_survey_status');
delete_site_option('sa_survey_status');
delete_option('sa_days_to_delivery');
delete_site_option('sa_days_to_delivery');
delete_option('sa_seal_status');
delete_site_option('sa_seal_status');
delete_option('sa_seal_status2');
delete_site_option('sa_seal_status2');
delete_option('sa_seal_excluded');
delete_site_option('sa_seal_excluded');
delete_option('sa_rp_status');
delete_site_option('sa_rp_status');
delete_option('sa_rotating_widget_status');
delete_site_option('sa_rotating_widget_status');
delete_option('sa_rotating_widget_code');
delete_site_option('sa_rotating_widget_code');
delete_option('sa_pwidgets_status');
delete_site_option('sa_pwidgets_status');
delete_option('sa_cstars_status');
delete_site_option('sa_cstars_status');
delete_option('sa_product_stars_code');
delete_site_option('sa_product_stars_code');
delete_option('sa_product_widget_code');
delete_site_option('sa_product_widget_code');
delete_option('sa_category_code');
delete_site_option('sa_category_code');
delete_option('sa_category_script');
delete_site_option('sa_category_script');
delete_option('sa_domain');
delete_site_option('sa_domain');
delete_option('rp_already_exists');
delete_site_option('rp_already_exists');
delete_option('sa_pf_history');
delete_site_option('sa_pf_history');
delete_option('sa_feed_gtin');
delete_site_option('sa_feed_gtin');

// Clear Cron Jobs
wp_clear_scheduled_hook('generate_feeds_hook');

