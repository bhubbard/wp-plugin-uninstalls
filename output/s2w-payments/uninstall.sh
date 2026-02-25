#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_environment'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cache_lifetime'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disable_ssl_verification'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_create_customer'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_partial_item_match'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_guest_orders'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_payment_gateway'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_order_status'"

