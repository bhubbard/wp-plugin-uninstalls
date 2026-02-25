<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_ad_list');
delete_site_option('fs_ad_list');
delete_option('fs_username_aliases');
delete_site_option('fs_username_aliases');
delete_option('fs_bw_list');
delete_site_option('fs_bw_list');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_cef_list_purge_cron_hook');

