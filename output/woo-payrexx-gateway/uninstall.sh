#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%instance'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_key'"
wp option delete 'woocommerce_payrexx_logos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%prefix'"
wp option delete 'woocommerce_prices_include_tax'

