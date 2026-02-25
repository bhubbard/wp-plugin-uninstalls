<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dpdp_settings');
delete_site_option('dpdp_settings');
delete_option('dpdp_policy_text');
delete_site_option('dpdp_policy_text');
delete_option('dpdp_total_consents');
delete_site_option('dpdp_total_consents');

// Clear Cron Jobs
wp_clear_scheduled_hook('dpdp_retention_purge');

