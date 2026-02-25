#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_stock_old_styles'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'wsm_dismiss_subscribe_admin_notice'
wp option delete 'sa_wsm_offer_bfcm_2025'
wp option delete 'sa_wsm_dismiss_in_app_pricing_notice'
wp option delete 'wsm_display_option'
wp option delete 'woocommerce_stock_limit'

