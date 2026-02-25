#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sifalo_pay_api_user'
wp option delete 'sifalo_pay_api_key'
wp option delete 'woocommerce_card_pay_settings'

# Clear Cron Jobs
wp cron event delete 'sifalo_pay_verify_pending_orders'

