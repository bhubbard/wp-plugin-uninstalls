#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hkdigital_easywallet_version_option'
wp option delete 'woocommerce_payment-gateway-for-easy-wallet_settings'
wp option delete 'hkdigital_payment-gateway-for-easy-wallet_verification_id'
wp option delete 'hkdigital_check_activation_easy_wallet'
wp option delete 'hkdigital_dump'

# Clear Cron Jobs
wp cron event delete 'hkdigital_cronCheckOrderEasyWallet'
wp cron event delete 'hkdigital_cron_cleanup_easywallet_logs'

