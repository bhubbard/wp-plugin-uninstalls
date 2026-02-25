#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bictorys_settings'
wp option delete 'woocommerce_store_address'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

