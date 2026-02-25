<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('s3io_resume');
delete_site_option('s3io_resume');
delete_option('s3io_verion');
delete_site_option('s3io_verion');
delete_option('s3io_bucketlist');
delete_site_option('s3io_bucketlist');
delete_option('s3io_dospaces');
delete_site_option('s3io_dospaces');
delete_option('s3io_aws_access_key_id');
delete_site_option('s3io_aws_access_key_id');
delete_option('s3io_aws_secret_access_key');
delete_site_option('s3io_aws_secret_access_key');
delete_option('s3io_version');
delete_site_option('s3io_version');
delete_option('aws_settings');
delete_site_option('aws_settings');
delete_option('s3io_optimize_urls');
delete_site_option('s3io_optimize_urls');
delete_option('s3io_bucket_paginator');
delete_site_option('s3io_bucket_paginator');
delete_option('s3io_buckets_scanned');
delete_site_option('s3io_buckets_scanned');
delete_option('s3io_last_run');
delete_site_option('s3io_last_run');

// Delete Transients
delete_transient('ewww_image_optimizer_cloud_status');
delete_site_transient('ewww_image_optimizer_cloud_status');

