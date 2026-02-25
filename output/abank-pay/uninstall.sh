#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abankpay_admin_notice'
wp option delete 'woocommerce_abank_pay_gateway_settings'

