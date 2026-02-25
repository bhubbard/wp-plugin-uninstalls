#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cubicsofts_asa_api_base'
wp option delete 'cubicsofts_asa_api_key'
wp option delete 'cubicsofts_asa_secret_token'
wp option delete 'cubicsofts_asa_email'
wp option delete 'cubicsofts_asa_password'

# Clear Cron Jobs
wp cron event delete 'cubicsofts_asa_sync_cron'

