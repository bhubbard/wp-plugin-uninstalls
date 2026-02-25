<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('netangelss3_key_id');
delete_site_option('netangelss3_key_id');
delete_option('netangelss3_secret_key');
delete_site_option('netangelss3_secret_key');
delete_option('netangelss3_connection_status');
delete_site_option('netangelss3_connection_status');
delete_option('netangelss3_bucket');
delete_site_option('netangelss3_bucket');
delete_option('netangelss3_auto_enable');
delete_site_option('netangelss3_auto_enable');
delete_option('netangelss3_senderrors');
delete_site_option('netangelss3_senderrors');

// Clear Cron Jobs
wp_clear_scheduled_hook('netangelss3_upload_hook');

