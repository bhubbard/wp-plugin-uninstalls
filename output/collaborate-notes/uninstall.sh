#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'collaborate_notes_active'
wp option delete 'collaborate_notes_db_version'

# Clear Cron Jobs
wp cron event delete 'send_reminder_event'

