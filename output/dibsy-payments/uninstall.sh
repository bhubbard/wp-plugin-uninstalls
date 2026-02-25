#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_dibsy_version'
wp option delete 'woocommerce_dibsy-v2_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

