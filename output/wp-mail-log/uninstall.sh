#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wml_review'
wp option delete 'wml_db_version'
wp option delete 'wpv_wml_settings'

# Delete Transients
wp transient delete 'wml_remind_later'

# Clear Cron Jobs
wp cron event delete 'wpv/wml/delete_logs'

