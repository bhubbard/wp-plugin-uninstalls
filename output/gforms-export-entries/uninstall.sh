#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gfee_settings'
wp option delete 'gfee_old_settings'
wp option delete 'gfee_has_updated_1_7_3'
wp option delete 'gfee_settings_old'

# Clear Cron Jobs
wp cron event delete 'export_gfee_entries'
wp cron event delete 'gfee_cleaning_days'

