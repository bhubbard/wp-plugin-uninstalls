#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete '_wcml_settings'
wp option delete 'salesafw_analytics_show_walkthrough'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'salesafw_redirect_on_activation'

