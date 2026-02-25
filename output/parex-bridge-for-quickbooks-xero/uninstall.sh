#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_api_enabled'
wp option delete 'wp_pxb_user'
wp option delete 'wp_pxb_module'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'wp_pxb_old_user'
wp option delete 'pxb_verificaitonEmail_status'
wp option delete 'wp_pxb_secret'
wp option delete 'woocommerce_default_country'

