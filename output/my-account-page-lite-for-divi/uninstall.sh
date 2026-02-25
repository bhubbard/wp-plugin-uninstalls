#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_orders_endpoint'
wp option delete 'woocommerce_myaccount_downloads_endpoint'
wp option delete 'woocommerce_myaccount_edit_address_endpoint'
wp option delete 'woocommerce_myaccount_payment_methods_endpoint'
wp option delete 'woocommerce_myaccount_edit_account_endpoint'
wp option delete 'woocommerce_logout_endpoint'
wp option delete 'woocommerce_myaccount_subscriptions_endpoint'
wp option delete 'woocommerce_myaccount_teams_area_endpoint'
wp option delete 'mapdl_settings'
wp option delete 'mapdl_endpoints'
wp option delete 'mapdl_flush_rewrite'

