#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcbcf_settings'
wp option delete 'woocommerce_subscriptions_enable_early_renewal'
wp option delete 'asaas_status_data'

# Clear Cron Jobs
wp cron event delete 'remove_expired_pix_asaas'
wp cron event delete 'remove_expired_ticket'

