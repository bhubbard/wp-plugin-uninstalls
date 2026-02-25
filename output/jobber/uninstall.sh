#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'jobber_activation_notice'

# Clear Cron Jobs
wp cron event delete 'jobber_rebuild_cache'

