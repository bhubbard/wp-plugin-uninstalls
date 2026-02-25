<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AWS_AccessKeyId');
delete_site_option('AWS_AccessKeyId');
delete_option('AWS_SecretKey');
delete_site_option('AWS_SecretKey');
delete_option('AWS_Tag');
delete_site_option('AWS_Tag');
delete_option('AWS_Locale');
delete_site_option('AWS_Locale');

// Clear Cron Jobs
wp_clear_scheduled_hook('product_update');

