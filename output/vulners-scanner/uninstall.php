<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vulners_plugins_audit_result');
delete_site_option('vulners_plugins_audit_result');
delete_option('vulners_os_audit_result');
delete_site_option('vulners_os_audit_result');
delete_option('vulners_os_audit_last_changes');
delete_site_option('vulners_os_audit_last_changes');
delete_option('vulners_plugins_audit_last_changes');
delete_site_option('vulners_plugins_audit_last_changes');
delete_option('VULNERS_EMAIL');
delete_site_option('VULNERS_EMAIL');
delete_option('VULNERS_API_KEY');
delete_site_option('VULNERS_API_KEY');
delete_option('vulners_audit_result');
delete_site_option('vulners_audit_result');

// Clear Cron Jobs
wp_clear_scheduled_hook('vulners_cron_hook');

