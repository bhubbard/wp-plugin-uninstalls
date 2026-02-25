#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bcl_api_token'
wp option delete 'bcl_order_prefix'
wp option delete 'bcl_portal_key'
wp option delete 'bcl_payment_select'

# Clear Cron Jobs
wp cron event delete 'bcl_check_payment_status'

