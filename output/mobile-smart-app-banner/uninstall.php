<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mobile_smart_app_banner_review_notice_dismissed');
delete_site_option('mobile_smart_app_banner_review_notice_dismissed');
delete_option('mobile_smart_app_banner_user_already_reviewed');
delete_site_option('mobile_smart_app_banner_user_already_reviewed');
delete_option('mobile_smart_app_banner_user_needs_help');
delete_site_option('mobile_smart_app_banner_user_needs_help');
delete_option('mobile_smart_app_banner_activation_date');
delete_site_option('mobile_smart_app_banner_activation_date');
delete_option('mobile_smart_app_banner_notice_dismiss_count');
delete_site_option('mobile_smart_app_banner_notice_dismiss_count');
delete_option('mobile_smart_app_banner_options');
delete_site_option('mobile_smart_app_banner_options');

