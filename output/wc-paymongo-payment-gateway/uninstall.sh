#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cynder_paymongo_test_mode'
wp option delete 'woocommerce_cynder_paymongo_send_invoice_after_payment'
wp option delete 'woocommerce_cynder_paymongo_debug_mode'
wp option delete 'cynder_paymongo_version'
wp option delete 'woocommerce_paymongo_settings'

