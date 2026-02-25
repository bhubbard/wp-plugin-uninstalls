#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inesgfr_api_key'
wp option delete 'inesgfr_company_id'

# Clear Cron Jobs
wp cron event delete 'inesta_gf_recruitee_cron'

