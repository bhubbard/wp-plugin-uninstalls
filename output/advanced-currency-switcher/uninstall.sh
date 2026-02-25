#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cswp_form_data'
wp option delete 'cswp_manual_rate'
wp option delete 'cswp_currency_button_type'
wp option delete 'cswp_apirate_values'
wp option delete 'cswp_display'
wp option delete 'apivalidate'
wp option delete 'apinotfree'

# Clear Cron Jobs
wp cron event delete 'cs_schedule_hook'

