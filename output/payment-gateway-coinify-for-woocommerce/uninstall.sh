#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_coinify_settings'
wp option delete 'pgcfw_shared_secret'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_cart_page_id'

# Clear Cron Jobs
wp cron event delete 'pgcfw_check_coinify_payment_intent'

