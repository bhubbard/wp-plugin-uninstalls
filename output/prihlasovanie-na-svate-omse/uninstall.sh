#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tsspsv_options'
wp option delete 'tsspsv_db_version'

# Clear Cron Jobs
wp cron event delete 'tsspsv_reset_forms'

