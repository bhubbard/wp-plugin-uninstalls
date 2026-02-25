#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_mintpay_settings'
wp option delete 'mintpay_inst_type'
wp option delete 'mintpay_cashback_value'

