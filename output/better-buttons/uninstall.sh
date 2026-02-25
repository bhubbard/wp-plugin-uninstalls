#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AWS_AccessKeyId'
wp option delete 'AWS_SecretKey'
wp option delete 'AWS_Tag'
wp option delete 'AWS_Locale'

# Clear Cron Jobs
wp cron event delete 'product_update'

