#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vr_wp_notices_dompdf'
wp option delete 'vr_wp_notices_directory'
wp option delete 'vr_wp_notices_directory_url'

# Clear Cron Jobs
wp cron event delete 'vr_wp_notices_cron'

