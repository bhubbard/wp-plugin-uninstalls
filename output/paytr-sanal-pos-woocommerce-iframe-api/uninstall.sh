#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paytr_payment_gateway_settings'
wp option delete 'woocommerce_paytr_payment_gateway_eft_settings'

