<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('IHM-Settings');
delete_site_option('IHM-Settings');
delete_option('IHM-SpidersList');
delete_site_option('IHM-SpidersList');

// Clear Cron Jobs
wp_clear_scheduled_hook('IHM_UpdateSpiderList');

