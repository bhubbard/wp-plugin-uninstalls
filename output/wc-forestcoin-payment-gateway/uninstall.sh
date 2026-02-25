#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_fc_payment_gateway_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

