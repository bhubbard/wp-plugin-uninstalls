#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_icwoorok2_bancontact_settings'
wp option delete 'woocommerce_icwoorok2_cards_settings'
wp option delete 'woocommerce_icwoorok2_ideal_settings'
wp option delete 'woocommerce_icwoorok2_paypal_settings'
wp option delete 'icwoorok2_signing_key'
wp option delete 'icwoorok2_debugwebhook'
wp option delete 'icwoorok2_sandbox'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'icwoorok2_refresh_token'
wp option delete 'icwoorok2_merchant_order_id'
wp option delete 'icwoorok2_use_old_domain'

