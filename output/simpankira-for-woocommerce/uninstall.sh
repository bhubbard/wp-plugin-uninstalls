#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpankira'
wp option delete 'csf_demo_mode'

# Clear Cron Jobs
wp cron event delete 'simpankira_woocommerce_push_transaction'

