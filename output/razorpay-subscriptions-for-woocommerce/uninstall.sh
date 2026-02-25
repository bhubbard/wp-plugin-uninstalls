#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_razorpay_subscriptions_settings'
wp option delete 'webhook_secret'
wp option delete 'rzp_webhook_secret'
wp option delete 'rzp_subscription_webhook_enable_flag'

