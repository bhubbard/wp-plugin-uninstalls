#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_checkout_pay_endpoint'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

