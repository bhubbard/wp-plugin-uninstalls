<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icds_connection');
delete_site_option('icds_connection');
delete_option('icds_version');
delete_site_option('icds_version');
delete_option('icds_savedtemplates');
delete_site_option('icds_savedtemplates');
delete_option('icds_formregistrations');
delete_site_option('icds_formregistrations');
delete_option('icds_binding');
delete_site_option('icds_binding');
delete_option('icds_userBinding');
delete_site_option('icds_userBinding');

// Clear Cron Jobs
wp_clear_scheduled_hook('integration-cds/cache/warmup');

