<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apm_funnel_pageid_mapping_data');
delete_site_option('apm_funnel_pageid_mapping_data');
delete_option('apm_funnel_slug_mapping_data');
delete_site_option('apm_funnel_slug_mapping_data');
delete_option('apm_funnel_prospect_tags');
delete_site_option('apm_funnel_prospect_tags');
delete_option('apm_funnel_clickmagic_script');
delete_site_option('apm_funnel_clickmagic_script');
delete_option('apm_funnel_status_mapping_data');
delete_site_option('apm_funnel_status_mapping_data');
delete_option('apm_funnel_termid_mapping_data');
delete_site_option('apm_funnel_termid_mapping_data');
delete_option('apm_funnel_slug_term_mapping_data');
delete_site_option('apm_funnel_slug_term_mapping_data');
delete_option('apm_funnel_optin_default_display');
delete_site_option('apm_funnel_optin_default_display');
delete_option('apm_funnel_clickmagic_term_script');
delete_site_option('apm_funnel_clickmagic_term_script');
delete_option('apm_snippet_updated_in_master');
delete_site_option('apm_snippet_updated_in_master');
delete_option('apm_apm_cron_daily');
delete_site_option('apm_apm_cron_daily');
delete_option('apm_apm_cron_weekly');
delete_site_option('apm_apm_cron_weekly');
delete_option('apm_cron_weekly_time');
delete_site_option('apm_cron_weekly_time');
delete_option('apm_share_success_category');
delete_site_option('apm_share_success_category');
delete_option('apm_apm_post_schedule');
delete_site_option('apm_apm_post_schedule');
delete_option('apm_share_success_headline');
delete_site_option('apm_share_success_headline');
delete_option('apm_social_share_message');
delete_site_option('apm_social_share_message');
delete_option('apm_set_success_story_amount');
delete_site_option('apm_set_success_story_amount');
delete_option('apm_share_success_image');
delete_site_option('apm_share_success_image');
delete_option('apm_subscription_curr_ver');
delete_site_option('apm_subscription_curr_ver');
delete_option('apm_subscription_prev_ver');
delete_site_option('apm_subscription_prev_ver');
delete_option('success_story_last_execution_time');
delete_site_option('success_story_last_execution_time');
delete_option('_apm_achieved_milestones');
delete_site_option('_apm_achieved_milestones');

// Clear Cron Jobs
wp_clear_scheduled_hook('ws_cron_hook');
wp_clear_scheduled_hook('apm_social_post_weekly_cron_hook');
wp_clear_scheduled_hook('apm_social_post_regular_cron_hook');
wp_clear_scheduled_hook('apm_social_post_daily_cron_hook');

