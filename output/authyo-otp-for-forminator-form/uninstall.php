<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('authyo_forminator_email_subscription_dismissed');
delete_site_option('authyo_forminator_email_subscription_dismissed');
delete_option('authyo_forminator_email_subscription_completed');
delete_site_option('authyo_forminator_email_subscription_completed');
delete_option('authyo_forminator_settings');
delete_site_option('authyo_forminator_settings');

// Delete Transients
delete_transient('authyo_forminator_show_email_subscription');
delete_site_transient('authyo_forminator_show_email_subscription');
delete_transient('authyo_forminator_trigger_tracking');
delete_site_transient('authyo_forminator_trigger_tracking');

