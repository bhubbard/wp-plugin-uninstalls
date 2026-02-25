#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_version'

# Clear Cron Jobs
wp cron event delete 'pdapp_cronjob_event'

