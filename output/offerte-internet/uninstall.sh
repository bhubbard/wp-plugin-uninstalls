#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'offerte_internet_data'

# Clear Cron Jobs
wp cron event delete 'offerte_internet_cron_hook'

