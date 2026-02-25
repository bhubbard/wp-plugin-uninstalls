#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pei_pix_api_key'
wp option delete 'pei_pix_secret'
wp option delete 'pei_pix_currency'
wp option delete 'pei_pix_gateway_option'
wp option delete 'pei_pix_logs'

# Clear Cron Jobs
wp cron event delete 'pei_pix_auto_approve'

