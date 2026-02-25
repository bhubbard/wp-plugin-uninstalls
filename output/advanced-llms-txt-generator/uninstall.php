<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpseo_titles');
delete_site_option('wpseo_titles');
delete_option('llms_txt_options');
delete_site_option('llms_txt_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('llms_txt_auto_update');

