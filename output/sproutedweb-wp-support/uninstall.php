<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sproutedwebchat_gtmetrix_key');
delete_site_option('sproutedwebchat_gtmetrix_key');
delete_option('sproutedwebchat_gtmetrix_credit');
delete_site_option('sproutedwebchat_gtmetrix_credit');
delete_option('sproutedwebchat_active');
delete_site_option('sproutedwebchat_active');
delete_option('sproutedwebchat_license_key');
delete_site_option('sproutedwebchat_license_key');
delete_option('sproutedwebchat_license_details');
delete_site_option('sproutedwebchat_license_details');
delete_option('sproutedwebchat_other_details');
delete_site_option('sproutedwebchat_other_details');
delete_option('sproutedwebchat_other_common');
delete_site_option('sproutedwebchat_other_common');
delete_option('sproutedwebchat_gtmetrix_location');
delete_site_option('sproutedwebchat_gtmetrix_location');
delete_option('sproutedwebchat_gtmetrix_browsers');
delete_site_option('sproutedwebchat_gtmetrix_browsers');
delete_option('sproutedwebchat_activate');
delete_site_option('sproutedwebchat_activate');
delete_option('sproutedwebchat_gtmetrix_log');
delete_site_option('sproutedwebchat_gtmetrix_log');
delete_option('sproutedwebchat_plan_features');
delete_site_option('sproutedwebchat_plan_features');
delete_option('sproutedwebchat_plan_name');
delete_site_option('sproutedwebchat_plan_name');
delete_option('sproutedwebchat_license_log');
delete_site_option('sproutedwebchat_license_log');
delete_option('sproutedwebchat_gtmetrix_other_details');
delete_site_option('sproutedwebchat_gtmetrix_other_details');
delete_option('sproutedwebchat_gtmetrix_packages');
delete_site_option('sproutedwebchat_gtmetrix_packages');

