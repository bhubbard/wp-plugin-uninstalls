<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cartshark_tracker_enabled');
delete_site_option('cartshark_tracker_enabled');
delete_option('cartshark_account_id');
delete_site_option('cartshark_account_id');
delete_option('cartshark_website_id');
delete_site_option('cartshark_website_id');
delete_option('cartshark_activated_time');
delete_site_option('cartshark_activated_time');
delete_option('cartshark_version');
delete_site_option('cartshark_version');
delete_option('cartshark_requirements_met');
delete_site_option('cartshark_requirements_met');
delete_option('cartshark_missing_requirements');
delete_site_option('cartshark_missing_requirements');
delete_option('cartshark_setup_complete');
delete_site_option('cartshark_setup_complete');
delete_option('cartshark_tracker_status');
delete_site_option('cartshark_tracker_status');
delete_option('cartshark_subscription_status');
delete_site_option('cartshark_subscription_status');
delete_option('cartshark_user_data');
delete_site_option('cartshark_user_data');
delete_option('cartshark_public_key_encrypted');
delete_site_option('cartshark_public_key_encrypted');
delete_option('cartshark_private_key_encrypted');
delete_site_option('cartshark_private_key_encrypted');
delete_option('cartshark_api_keys_updated');
delete_site_option('cartshark_api_keys_updated');
delete_option('cartshark_encryption_key');
delete_site_option('cartshark_encryption_key');
delete_option('cartshark_tracker_snippet');
delete_site_option('cartshark_tracker_snippet');
delete_option('cartshark_tracker_version');
delete_site_option('cartshark_tracker_version');
delete_option('cartshark_tracker_last_updated');
delete_site_option('cartshark_tracker_last_updated');
delete_option('cartshark_last_sync');
delete_site_option('cartshark_last_sync');
delete_option('cartshark_activation_date');
delete_site_option('cartshark_activation_date');
delete_option('cartshark_first_activation');
delete_site_option('cartshark_first_activation');
delete_option('cartshark_delete_data_on_uninstall');
delete_site_option('cartshark_delete_data_on_uninstall');

// Delete Transients
delete_transient('cartshark_auth_token');
delete_site_transient('cartshark_auth_token');
delete_transient('cartshark_account_stats');
delete_site_transient('cartshark_account_stats');
delete_transient('cartshark_website_data');
delete_site_transient('cartshark_website_data');
delete_transient('cartshark_subscription_data');
delete_site_transient('cartshark_subscription_data');
delete_transient('cartshark_tracker_status');
delete_site_transient('cartshark_tracker_status');
delete_transient('cartshark_api_cache');
delete_site_transient('cartshark_api_cache');

