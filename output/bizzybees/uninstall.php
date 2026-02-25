<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bizzybees_openai_model');
delete_site_option('bizzybees_openai_model');
delete_option('bizzybees_needs_setup');
delete_site_option('bizzybees_needs_setup');
delete_option('bizzybees_emergency_stop_active');
delete_site_option('bizzybees_emergency_stop_active');
delete_option('bizzybees_pending_links');
delete_site_option('bizzybees_pending_links');
delete_option('bizzybees_aggregated_content');
delete_site_option('bizzybees_aggregated_content');
delete_option('bizzybees_logs');
delete_site_option('bizzybees_logs');
delete_option('bizzybees_idk_secret');
delete_site_option('bizzybees_idk_secret');
delete_option('bizzybees_api_key');
delete_site_option('bizzybees_api_key');
delete_option('bizzybees_scrapingbee_api_key');
delete_site_option('bizzybees_scrapingbee_api_key');
delete_option('bizzybees_enable_all_logging');
delete_site_option('bizzybees_enable_all_logging');
delete_option('bizzybees_enable_key_logging');
delete_site_option('bizzybees_enable_key_logging');
delete_option('bizzybees_current_multitask_id');
delete_site_option('bizzybees_current_multitask_id');
delete_option('bizzybees_scrape_options');
delete_site_option('bizzybees_scrape_options');
delete_option('bizzybees_urls');
delete_site_option('bizzybees_urls');
delete_option('bizzybees_ai_prompts');
delete_site_option('bizzybees_ai_prompts');
delete_option('bizzybees_max_links');
delete_site_option('bizzybees_max_links');
delete_option('bizzybees_crawl_depth');
delete_site_option('bizzybees_crawl_depth');
delete_option('bizzybees_ai_prompt');
delete_site_option('bizzybees_ai_prompt');
delete_option('bizzybees_post_action');
delete_site_option('bizzybees_post_action');
delete_option('bizzybees_update_mode');
delete_site_option('bizzybees_update_mode');
delete_option('bizzybees_merge_method');
delete_site_option('bizzybees_merge_method');
delete_option('bizzybees_section_start');
delete_site_option('bizzybees_section_start');
delete_option('bizzybees_section_end');
delete_site_option('bizzybees_section_end');
delete_option('bizzybees_rewrite_prompt');
delete_site_option('bizzybees_rewrite_prompt');
delete_option('bizzybees_post_to_update');
delete_site_option('bizzybees_post_to_update');
delete_option('bizzybees_schedule_interval');
delete_site_option('bizzybees_schedule_interval');
delete_option('bizzybees_use_advanced_scraping');
delete_site_option('bizzybees_use_advanced_scraping');
delete_option('bizzybees_strip_overlays');
delete_site_option('bizzybees_strip_overlays');
delete_option('bizzybees_enable_log_viewer');
delete_site_option('bizzybees_enable_log_viewer');
delete_option('bizzybees_enable_progress_bar');
delete_site_option('bizzybees_enable_progress_bar');
delete_option('bizzybees_scrapingbee_country');
delete_site_option('bizzybees_scrapingbee_country');
delete_option('bizzybees_disable_footnotes');
delete_site_option('bizzybees_disable_footnotes');
delete_option('bizzybees_custom_html_prompt');
delete_site_option('bizzybees_custom_html_prompt');
delete_option('bizzybees_already_finalized_default');
delete_site_option('bizzybees_already_finalized_default');
delete_option('bizzybees_retry_counts');
delete_site_option('bizzybees_retry_counts');
delete_option('bizzybees_title_prompt');
delete_site_option('bizzybees_title_prompt');
delete_option('bizzybees_registered_hooks');
delete_site_option('bizzybees_registered_hooks');
delete_option('bizzybees_retry_pending_default');
delete_site_option('bizzybees_retry_pending_default');
delete_option('bizzybees_ai_failures_default');
delete_site_option('bizzybees_ai_failures_default');
delete_option('bizzybees_ai_preempt_default');
delete_site_option('bizzybees_ai_preempt_default');
delete_option('bizzybees_final_post_id_default');
delete_site_option('bizzybees_final_post_id_default');
delete_option('bizzybees_disable_keepalive');
delete_site_option('bizzybees_disable_keepalive');
delete_option('cron');
delete_site_option('cron');

// Delete Transients
delete_transient('bizzybees_emergency_stop_transient');
delete_site_transient('bizzybees_emergency_stop_transient');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bizzybees_idk_%', '_site_transient_bizzybees_idk_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('bizzybees_run_now_in_progress');
delete_site_transient('bizzybees_run_now_in_progress');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bizzybees_final_content_%', '_site_transient_bizzybees_final_content_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('bizzybees_finalizing_default');
delete_site_transient('bizzybees_finalizing_default');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bizzybees_finalizing_%', '_site_transient_bizzybees_finalizing_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('bizzybees_choose_links_worker');
wp_clear_scheduled_hook('bizzybees_scrape_event');
wp_clear_scheduled_hook('bizzybees_process_ai_content');
wp_clear_scheduled_hook('bizzybees_clear_emergency_flag');
wp_clear_scheduled_hook('bizzybees_cron_job');
wp_clear_scheduled_hook('bizzybees_insert_final_post');

