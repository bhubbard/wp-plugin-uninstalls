#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Kloudymail'
wp option delete 'widget_kloudymail'
wp option delete 'kmlg_db_version'

# Clear Cron Jobs
wp cron event delete 'kmlgUpdateFields'

