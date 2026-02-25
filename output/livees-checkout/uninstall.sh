#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_iframe_gateway_settings'

