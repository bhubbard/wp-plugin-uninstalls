#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'WP_PJAX_PREFETCH_URLS_TANSIENT'
wp transient delete 'WP_PJAX_LAST_PREFETCH'

# Clear Cron Jobs
wp cron event delete 'wp-pjax-pg-prefetch'

