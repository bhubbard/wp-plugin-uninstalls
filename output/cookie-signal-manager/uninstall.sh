#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'coksima_settings'
wp option delete 'coksima_secret_key'
wp option delete 'coksima_secret_iv'

# Clear Cron Jobs
wp cron event delete 'coksima_cleanup'

