<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wvcl_head_hunter');
delete_site_option('wvcl_head_hunter');
delete_option('wvcl_description');
delete_site_option('wvcl_description');
delete_option('description_section');
delete_site_option('description_section');

// Clear Cron Jobs
wp_clear_scheduled_hook('wvcl_cron_vacancy');

