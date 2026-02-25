<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cirvgu_debug_mode');
delete_site_option('cirvgu_debug_mode');
delete_option('cirvgu_debug_log');
delete_site_option('cirvgu_debug_log');
delete_option('cirvgu_rating_notice_installed');
delete_site_option('cirvgu_rating_notice_installed');
delete_option('cirvgu_scan_results');
delete_site_option('cirvgu_scan_results');
delete_option('cirvgu_last_scan_time');
delete_site_option('cirvgu_last_scan_time');
delete_option('cirvgu_enable_alt_text_check');
delete_site_option('cirvgu_enable_alt_text_check');
delete_option('cirvgu_enable_heading_check');
delete_site_option('cirvgu_enable_heading_check');
delete_option('cirvgu_enable_contrast_check');
delete_site_option('cirvgu_enable_contrast_check');
delete_option('cirvgu_enable_form_label_check');
delete_site_option('cirvgu_enable_form_label_check');
delete_option('cirvgu_enable_link_text_check');
delete_site_option('cirvgu_enable_link_text_check');
delete_option('cirvgu_rating_notice_dismissed');
delete_site_option('cirvgu_rating_notice_dismissed');

