#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%apikey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wc_currency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wc_shop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wc_product'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wc_cart'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wc_checkout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wc_thank_you'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%quota' OR option_name LIKE '_site_transient_%quota'"

