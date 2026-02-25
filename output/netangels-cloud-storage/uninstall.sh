#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'netangelss3_key_id'
wp option delete 'netangelss3_secret_key'
wp option delete 'netangelss3_connection_status'
wp option delete 'netangelss3_bucket'
wp option delete 'netangelss3_auto_enable'
wp option delete 'netangelss3_senderrors'

# Clear Cron Jobs
wp cron event delete 'netangelss3_upload_hook'

