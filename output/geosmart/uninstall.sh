#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geosmart-options'

# Clear Cron Jobs
wp cron event delete 'geosmart_database_clean'

