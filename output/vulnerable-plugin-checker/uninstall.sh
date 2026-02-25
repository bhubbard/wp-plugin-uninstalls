#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vpc_email_address'
wp option delete 'vpc_allow_emails'
wp option delete 'vpc-plugin-data'

# Clear Cron Jobs
wp cron event delete 'vpc_pull_db_data_event'

