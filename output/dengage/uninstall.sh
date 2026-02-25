#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dengage_cdmp_api_username'
wp option delete 'dengage_cdmp_api_password'
wp option delete 'dengage_cdmp_execution_mode'
wp option delete 'dengage_cdmp_region'
wp option delete 'dengage_cdmp_sdk_script'
wp option delete 'dengage_accessToken'

# Clear Cron Jobs
wp cron event delete 'dengage_enqueue'

