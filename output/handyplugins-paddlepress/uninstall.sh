#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'handyplugins_paddlepress_installing'
wp transient delete 'paddlepress_paddle_products'
wp transient delete 'paddlepress_paddle_products_sandbox'
wp transient delete 'paddlepress_paddle_subscriptions'
wp transient delete 'paddlepress_paddle_subscriptions_sandbox'
wp transient delete 'paddlepress_billing_prices'
wp transient delete 'paddlepress_billing_prices_sandbox'
wp transient delete 'paddlepress_billing_products'
wp transient delete 'paddlepress_billing_products_sandbox'

