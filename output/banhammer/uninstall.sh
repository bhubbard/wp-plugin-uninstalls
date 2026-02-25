#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'banhammer_armory'
wp option delete 'banhammer_tower'
wp option delete 'banhammer_settings'
wp option delete 'banhammer_secret_key'
wp option delete 'banhammer-dismiss-notice'

# Clear Cron Jobs
wp cron event delete 'banhammer_cron_reset'

