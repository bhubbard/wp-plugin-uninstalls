#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_multicaixa_proxypay_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

