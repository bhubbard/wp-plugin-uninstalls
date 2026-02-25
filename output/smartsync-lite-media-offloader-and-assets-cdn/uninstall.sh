#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smarl_settings'
wp option delete 'service_json_path_temp'
wp option delete 'aws_s3_cloudfront_settings'
wp option delete 'use_aws'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

