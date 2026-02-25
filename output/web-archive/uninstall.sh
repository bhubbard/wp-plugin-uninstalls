#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wa_general'

# Clear Cron Jobs
wp cron event delete 'webarchive_create_snapshot'

