#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dc_moafw_activate'
wp option delete 'dc_moafw_minimum'
wp option delete 'dc_moafw_message'
wp option delete 'dc_moafw_current_total_text'
wp option delete 'dc_moafw_currency_display_type'
wp option delete 'dc_moafw_message_shop'
wp option delete 'woocommerce_currency'

