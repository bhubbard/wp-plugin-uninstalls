#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quant_internal_token'

# Clear Cron Jobs
wp cron event delete 'quant_cronjob'

