<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('digiconsent_settings');
delete_site_option('digiconsent_settings');
delete_option('digiconsent_activation_timestamp');
delete_site_option('digiconsent_activation_timestamp');
delete_option('digiconsent_review_notice_dismissed');
delete_site_option('digiconsent_review_notice_dismissed');

// Delete Transients
delete_transient('digiconsent_review_notice_dismissed_temporarily');
delete_site_transient('digiconsent_review_notice_dismissed_temporarily');
delete_transient('digiconsent_pro_license_details');
delete_site_transient('digiconsent_pro_license_details');

// Clear Cron Jobs
wp_clear_scheduled_hook('digiconsent_daily_cleanup');

