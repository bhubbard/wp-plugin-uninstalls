#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cart' OR option_name LIKE '_site_transient_%_cart'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_easy_cart_rows' OR option_name LIKE '_site_transient_%_easy_cart_rows'"

