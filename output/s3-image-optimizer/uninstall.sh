#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's3io_resume'
wp option delete 's3io_verion'
wp option delete 's3io_bucketlist'
wp option delete 's3io_dospaces'
wp option delete 's3io_aws_access_key_id'
wp option delete 's3io_aws_secret_access_key'
wp option delete 's3io_version'
wp option delete 'aws_settings'
wp option delete 's3io_optimize_urls'
wp option delete 's3io_bucket_paginator'
wp option delete 's3io_buckets_scanned'
wp option delete 's3io_last_run'

# Delete Transients
wp transient delete 'ewww_image_optimizer_cloud_status'

