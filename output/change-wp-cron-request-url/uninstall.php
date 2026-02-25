<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('change_wp_cron_domain');
delete_site_option('change_wp_cron_domain');
delete_option('change_wp_cron_port');
delete_site_option('change_wp_cron_port');

