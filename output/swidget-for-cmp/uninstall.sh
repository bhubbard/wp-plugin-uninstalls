#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_use_php_sessions'
wp option delete 'sw_data_consent'

# Clear Cron Jobs
wp cron event delete 'wp_session_garbage_collection'

