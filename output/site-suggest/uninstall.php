<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stsgt_settings_data');
delete_site_option('stsgt_settings_data');
delete_option('stsgt_site_speed_data');
delete_site_option('stsgt_site_speed_data');
delete_option('stsgt_cron_scanning_complete');
delete_site_option('stsgt_cron_scanning_complete');
delete_option('stsgt_real_cron_obsv_started');
delete_site_option('stsgt_real_cron_obsv_started');
delete_option('stsgt_real_cron_obsv_checklists');
delete_site_option('stsgt_real_cron_obsv_checklists');
delete_option('stsgt_real_cron_obsv_post_page');
delete_site_option('stsgt_real_cron_obsv_post_page');
delete_option('stsgt_real_cron_obsv_post_ids');
delete_site_option('stsgt_real_cron_obsv_post_ids');
delete_option('stsgt_cron_progress');
delete_site_option('stsgt_cron_progress');
delete_option('stsgt_cron_total_progress');
delete_site_option('stsgt_cron_total_progress');
delete_option('stsgt_checked_schema_markups');
delete_site_option('stsgt_checked_schema_markups');
delete_option('stsgt_robots_txt_content');
delete_site_option('stsgt_robots_txt_content');
delete_option('stsgt_robots_prev_txt_content');
delete_site_option('stsgt_robots_prev_txt_content');
delete_option('stsgt_approve_tech_data');
delete_site_option('stsgt_approve_tech_data');
delete_option('stsgt_total_http_array');
delete_site_option('stsgt_total_http_array');
delete_option('stsgt_cron_observers');
delete_site_option('stsgt_cron_observers');
delete_option('stsgt_last_audit');
delete_site_option('stsgt_last_audit');
delete_option('stsgt_cron_toggle');
delete_site_option('stsgt_cron_toggle');
delete_option('stsgt_peak_memory_limit');
delete_site_option('stsgt_peak_memory_limit');
delete_option('wp_mail_smtp');
delete_site_option('wp_mail_smtp');
delete_option('postman_options');
delete_site_option('postman_options');
delete_option('easy_wp_smtp');
delete_site_option('easy_wp_smtp');
delete_option('smtp_mailer_options');
delete_site_option('smtp_mailer_options');
delete_option('fluentmail-settings');
delete_site_option('fluentmail-settings');
delete_option('bricks_global_settings');
delete_site_option('bricks_global_settings');
delete_option('et_divi');
delete_site_option('et_divi');
delete_option('wpcaptcha_options');
delete_site_option('wpcaptcha_options');
delete_option('elementor_pro_recaptcha_site_key');
delete_site_option('elementor_pro_recaptcha_site_key');
delete_option('elementor_pro_recaptcha_secret_key');
delete_site_option('elementor_pro_recaptcha_secret_key');
delete_option('elementor_pro_recaptcha_v3_site_key');
delete_site_option('elementor_pro_recaptcha_v3_site_key');
delete_option('elementor_pro_recaptcha_v3_secret_key');
delete_site_option('elementor_pro_recaptcha_v3_secret_key');
delete_option('stsgt_analytics_fetch_time');
delete_site_option('stsgt_analytics_fetch_time');
delete_option('stsgt_analytics_data');
delete_site_option('stsgt_analytics_data');
delete_option('rank-math-options-sitemap');
delete_site_option('rank-math-options-sitemap');
delete_option('enable_xml_sitemap');
delete_site_option('enable_xml_sitemap');
delete_option('stsgt_repeat_cron_timeout');
delete_site_option('stsgt_repeat_cron_timeout');
delete_option('stsgt_h1_tag_pages_offset');
delete_site_option('stsgt_h1_tag_pages_offset');
delete_option('stsgt_total_http_coutns');
delete_site_option('stsgt_total_http_coutns');
delete_option('stsgt_large_images');
delete_site_option('stsgt_large_images');
delete_option('stsgt_recaptcha_pages');
delete_site_option('stsgt_recaptcha_pages');
delete_option('stsgt_h1_tag_pages');
delete_site_option('stsgt_h1_tag_pages');
delete_option('stsgt_redirect_permission');
delete_site_option('stsgt_redirect_permission');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('crontrol-cron-test-ok');
delete_site_transient('crontrol-cron-test-ok');
delete_transient('cached_site_health_data');
delete_site_transient('cached_site_health_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('stsgt_every_min_cron');
wp_clear_scheduled_hook('stsgt_every_five_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'stsgt_site_speed_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'stsgt_site_speed_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'stsgt_site_speed_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'stsgt_site_speed_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

