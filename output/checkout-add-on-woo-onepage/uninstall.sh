#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_guest_checkout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

