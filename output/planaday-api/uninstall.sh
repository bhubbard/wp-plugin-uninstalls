#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'planaday-api-general'
wp option delete 'planaday-api-css'
wp option delete 'planaday-api-payment'
wp option delete 'planaday-api-version'
wp option delete 'paytium_test_api_key'
wp option delete 'paytium_live_api_key'
wp option delete 'paytium_enable_live_key'

# Clear Cron Jobs
wp cron event delete 'pad_cron_update_all_courses'

