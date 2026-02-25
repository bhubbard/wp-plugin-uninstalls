<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('epassc_api_key');
delete_site_option('epassc_api_key');
delete_option('epassc_org_id');
delete_site_option('epassc_org_id');
delete_option('epassc_next_refresh');
delete_site_option('epassc_next_refresh');
delete_option('epass_next_refresh');
delete_site_option('epass_next_refresh');

// Clear Cron Jobs
wp_clear_scheduled_hook('epassc_refresh_event');

