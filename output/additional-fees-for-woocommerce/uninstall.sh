#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'additional_fees_for_wc_payment_gateway_static'
wp option delete 'additional_fees_for_wc_payment_gateway_dynamic'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_static'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dynamic'"

