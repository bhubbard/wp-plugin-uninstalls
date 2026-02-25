#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'archivise_posts'

# Clear Cron Jobs
wp cron event delete 'scheduled_archiving'

