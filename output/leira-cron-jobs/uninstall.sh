#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leira-cron-jobs-footer-rated'
wp option delete 'cron'

# Delete Transients
wp transient delete 'doing_cron'

