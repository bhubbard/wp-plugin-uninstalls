<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('authyo_cf7_settings');
delete_site_option('authyo_cf7_settings');
delete_option('authyo_enabled_channels');
delete_site_option('authyo_enabled_channels');
delete_option('authyo_cf7_form_settings');
delete_site_option('authyo_cf7_form_settings');
delete_option('cf7_authyo_settings');
delete_site_option('cf7_authyo_settings');
delete_option('authyo_cf7_email_subscription_dismissed');
delete_site_option('authyo_cf7_email_subscription_dismissed');
delete_option('authyo_cf7_email_subscription_completed');
delete_site_option('authyo_cf7_email_subscription_completed');
delete_option('authyo_cf7_country_cache_time');
delete_site_option('authyo_cf7_country_cache_time');
delete_option('_transient_timeout_authyo_cf7_country_list');
delete_site_option('_transient_timeout_authyo_cf7_country_list');

// Delete Transients
delete_transient('authyo_cf7_show_email_subscription');
delete_site_transient('authyo_cf7_show_email_subscription');
delete_transient('authyo_cf7_trigger_tracking');
delete_site_transient('authyo_cf7_trigger_tracking');
delete_transient('authyo_cf7_country_list');
delete_site_transient('authyo_cf7_country_list');

