#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bookingcom_product_helper_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'booking_product_helper_shortname-%'"

