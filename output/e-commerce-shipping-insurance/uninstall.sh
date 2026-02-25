#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shipping_insurance_default_state'
wp option delete 'woocommerce_shipping_insurance_label_text'
wp option delete 'woocommerce_shipping_insurance_price'

