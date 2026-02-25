#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tuna_payment_operation_mode'
wp option delete 'tuna_payment_antifraud_config'
wp option delete 'tuna_payment_allow_cartao'
wp option delete 'tuna_operation_mode'
wp option delete 'woocommerce_force_ssl_checkout'

