<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ghlcoma_api_key');
delete_site_option('ghlcoma_api_key');
delete_option('ghlcoma_location_id');
delete_site_option('ghlcoma_location_id');

// Delete Transients
delete_transient('ghlcoma_contacts_cache');
delete_site_transient('ghlcoma_contacts_cache');
delete_transient('ghlcoma_opportunities_cache');
delete_site_transient('ghlcoma_opportunities_cache');
delete_transient('ghlcoma_pipelines_cache');
delete_site_transient('ghlcoma_pipelines_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('ghlcoma_contacts_sync');
wp_clear_scheduled_hook('ghlcoma_opportunities_sync');

