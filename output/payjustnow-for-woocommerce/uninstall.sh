#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payjustnow_settings'
wp option delete 'woocommerce_currency'

