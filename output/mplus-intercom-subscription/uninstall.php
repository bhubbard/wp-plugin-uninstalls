<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mplusis_subscribe_company_field');
delete_site_option('mplusis_subscribe_company_field');
delete_option('mplusis_subscribe_company_register_page');
delete_site_option('mplusis_subscribe_company_register_page');
delete_option('mplusis_subscribe_to_intercom');
delete_site_option('mplusis_subscribe_to_intercom');
delete_option('mplusis_subscription_spam_protection');
delete_site_option('mplusis_subscription_spam_protection');
delete_option('mplusis_subscription_type');
delete_site_option('mplusis_subscription_type');
delete_option('mplusis_api_key');
delete_site_option('mplusis_api_key');
delete_option('mplusis_shortcode_rendered');
delete_site_option('mplusis_shortcode_rendered');
delete_option('mplusis_removed_promo');
delete_site_option('mplusis_removed_promo');
delete_option('mplusis_plugin_activated');
delete_site_option('mplusis_plugin_activated');
delete_option('mplusis_plugin_activated_at');
delete_site_option('mplusis_plugin_activated_at');
delete_option('mplusis_plugin_deactivated');
delete_site_option('mplusis_plugin_deactivated');
delete_option('mplusis_plugin_deactivated_at');
delete_site_option('mplusis_plugin_deactivated_at');
delete_option('mplusis_app_id');
delete_site_option('mplusis_app_id');
delete_option('mplusis_promo_dismiss_time');
delete_site_option('mplusis_promo_dismiss_time');
delete_option('mplusis_enable_chat');
delete_site_option('mplusis_enable_chat');
delete_option('mplusis_own_api_key');
delete_site_option('mplusis_own_api_key');

// Delete Transients
delete_transient('intercom_oauth_nonce');
delete_site_transient('intercom_oauth_nonce');
delete_transient('mplusis_promo_notices');
delete_site_transient('mplusis_promo_notices');

