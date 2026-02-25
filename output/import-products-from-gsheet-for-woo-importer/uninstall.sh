#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_wc_import_google_sheet_gs_token'
wp option delete 'plugin_wc_import_google_sheet_options'

# Clear Cron Jobs
wp cron event delete 'importer_scheduled_cleanup'

