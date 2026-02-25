<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('epw_post_type');
delete_site_option('epw_post_type');
delete_option('epw_frequency');
delete_site_option('epw_frequency');
delete_option('epw_expiration_time');
delete_site_option('epw_expiration_time');
delete_option('epw_setting_time');
delete_site_option('epw_setting_time');
delete_option('epw_expire');
delete_site_option('epw_expire');

// Clear Cron Jobs
wp_clear_scheduled_hook('expire_posts');

