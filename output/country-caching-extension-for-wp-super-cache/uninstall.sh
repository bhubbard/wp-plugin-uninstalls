#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CCWPSC_VERSION'
wp option delete 'CCWPSC_VERSION_UPDATE'
wp option delete 'ccwpsc_caching_options'
wp option delete 'cc_maxmind_status'

# Clear Cron Jobs
wp cron event delete 'country_caching_check_wpsc'

