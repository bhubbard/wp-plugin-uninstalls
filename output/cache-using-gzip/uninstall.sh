#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'cugz_notice'

# Clear Cron Jobs
wp cron event delete 'cugz_cron_auto_preload'

