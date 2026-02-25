#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'btcpay_api_validation_error'
wp transient delete 'btcpay_api_validation_success'
wp transient delete 'btcpay_webhook_exists'
wp transient delete 'btcpay_webhook_created'
wp transient delete 'btcpay_webhook_error'

