#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cashtippr_woocommerce_installed'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_cashtippr_woocommerce_settings'

