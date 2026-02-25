<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpapps_draft_notifier_frequency');
delete_site_option('wpapps_draft_notifier_frequency');
delete_option('wpapps_draft_notifier_email_option');
delete_site_option('wpapps_draft_notifier_email_option');
delete_option('wpapps_draft_notifier_email_cc');
delete_site_option('wpapps_draft_notifier_email_cc');
delete_option('wpapps_draft_notifier_email_template');
delete_site_option('wpapps_draft_notifier_email_template');
delete_option('wpapps_draft_notifier_remove_cron');
delete_site_option('wpapps_draft_notifier_remove_cron');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpapps_draft_notifier_cron_hook');
wp_clear_scheduled_hook('wpapps_draft_notifier_event');

