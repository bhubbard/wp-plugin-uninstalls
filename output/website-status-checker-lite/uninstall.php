<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('servercheckpro_pro_purchase_date');
delete_site_option('servercheckpro_pro_purchase_date');
delete_option('servercheckpro_urls');
delete_site_option('servercheckpro_urls');
delete_option('servercheckpro_check_interval');
delete_site_option('servercheckpro_check_interval');
delete_option('servercheckpro_auto_check_enabled');
delete_site_option('servercheckpro_auto_check_enabled');
delete_option('servercheckpro_alert_on_slow');
delete_site_option('servercheckpro_alert_on_slow');
delete_option('servercheckpro_last_checked_time');
delete_site_option('servercheckpro_last_checked_time');
delete_option('servercheckpro_results');
delete_site_option('servercheckpro_results');
delete_option('servercheckpro_last_manual_check');
delete_site_option('servercheckpro_last_manual_check');
delete_option('servercheckpro_admin_notice_dismissed');
delete_site_option('servercheckpro_admin_notice_dismissed');

// Clear Cron Jobs
wp_clear_scheduled_hook('servercheckpro_cron_event');

