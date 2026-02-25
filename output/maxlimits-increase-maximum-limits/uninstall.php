<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maxlimits_tracking_pending');
delete_site_option('maxlimits_tracking_pending');
delete_option('maxlimits_allow_tracking');
delete_site_option('maxlimits_allow_tracking');
delete_option('maxlimits_just_activated');
delete_site_option('maxlimits_just_activated');
delete_option('maxlimits_insights_consent');
delete_site_option('maxlimits_insights_consent');
delete_option('maxlimits_install_event_sent');
delete_site_option('maxlimits_install_event_sent');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('maxlimits_version_tracked');
delete_site_option('maxlimits_version_tracked');

// Delete Transients
delete_transient('maxlimits_insights_notice_dismissed');
delete_site_transient('maxlimits_insights_notice_dismissed');
delete_transient('maxlimits_shop_notice_data');
delete_site_transient('maxlimits_shop_notice_data');

