#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wvcl_head_hunter'
wp option delete 'wvcl_description'
wp option delete 'description_section'

# Clear Cron Jobs
wp cron event delete 'wvcl_cron_vacancy'

