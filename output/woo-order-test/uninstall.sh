#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'admin_payment_bypass_enabled'
wp option delete 'woocommerce_wpfi_woo_order_test_settings'
wp option delete 'wpfi_do_activation_redirect'

