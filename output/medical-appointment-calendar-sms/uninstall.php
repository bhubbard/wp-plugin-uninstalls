<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('macsms_google_access_token');
delete_site_option('macsms_google_access_token');
delete_option('macsms_twilio_phone_number');
delete_site_option('macsms_twilio_phone_number');
delete_option('macsms_plivo_phone');
delete_site_option('macsms_plivo_phone');
delete_option('macsms_sinch_phone');
delete_site_option('macsms_sinch_phone');
delete_option('macsms_telnyx_phone');
delete_site_option('macsms_telnyx_phone');
delete_option('macsms_bandwidth_account_id');
delete_site_option('macsms_bandwidth_account_id');
delete_option('macsms_bandwidth_phone');
delete_site_option('macsms_bandwidth_phone');
delete_option('macsms_bandwidth_app_id');
delete_site_option('macsms_bandwidth_app_id');
delete_option('macsms_settings');
delete_site_option('macsms_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('macsms_sync_calendar_cron');

