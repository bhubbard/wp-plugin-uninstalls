<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smarl_settings');
delete_site_option('smarl_settings');
delete_option('service_json_path_temp');
delete_site_option('service_json_path_temp');
delete_option('aws_s3_cloudfront_settings');
delete_site_option('aws_s3_cloudfront_settings');
delete_option('use_aws');
delete_site_option('use_aws');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

