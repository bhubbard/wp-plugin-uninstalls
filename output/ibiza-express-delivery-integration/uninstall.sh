#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ibizaxdel_api_integration_key'
wp option delete 'ibizaxdel_api_integration_env'

# Clear Cron Jobs
wp cron event delete 'ibizaxdel_cron_hook_name'

