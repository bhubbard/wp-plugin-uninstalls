#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chillpay_stored_site_url'
wp option delete 'chillpay_domain_changed'
wp option delete 'chillpay_gateways_fixed'
wp option delete 'woocommerce_chillpay_installment_settings'
wp option delete 'woocommerce_chillpay_settings'

# Delete Transients
wp transient delete 'wc_payment_gateways'
wp transient delete 'woocommerce_payment_gateways'
wp transient delete 'wc_site_url'
wp transient delete 'chillpay_merchant_info'
wp transient delete 'chillpay_fee_info'

