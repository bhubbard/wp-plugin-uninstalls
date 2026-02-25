#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shopper_dotcom_db_version'

# Clear Cron Jobs
wp cron event delete 'shopper_sync_event'

