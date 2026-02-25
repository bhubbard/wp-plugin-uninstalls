<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('klaviyo_settings');
delete_site_option('klaviyo_settings');
delete_option('woocommerce_klaviyo_version');
delete_site_option('woocommerce_klaviyo_version');
delete_option('klaviyo_activation_time');
delete_site_option('klaviyo_activation_time');
delete_option('klaviyo_feedback_response');
delete_site_option('klaviyo_feedback_response');
delete_option('klaviyo_review_dismissed');
delete_site_option('klaviyo_review_dismissed');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('is_klaviyo_plugin_outdated');
delete_site_transient('is_klaviyo_plugin_outdated');

