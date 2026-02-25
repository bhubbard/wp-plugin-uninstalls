-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s3io_resume', 's3io_verion', 's3io_bucketlist', 's3io_dospaces', 's3io_aws_access_key_id', 's3io_aws_secret_access_key', 's3io_version', 'aws_settings', 's3io_optimize_urls', 's3io_bucket_paginator', 's3io_buckets_scanned', 's3io_last_run', 'ewww_image_optimizer_cloud_status');

