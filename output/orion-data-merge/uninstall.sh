#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wms-db-result-key'
wp option delete 'wms-remote-site-info'
wp option delete 'wms-last-remote-site'
wp option delete 'wms-site-key'
wp option delete 'msd_path'

# Delete Transients
wp transient delete 'wms-results-sqlite-file-path'

# Clear Cron Jobs
wp cron event delete 'wms_schedule_dump_with_php'

