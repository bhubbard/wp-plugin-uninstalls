#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-switch' OR option_name LIKE '_site_transient_%-switch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_upgrade' OR option_name LIKE '_site_transient_%_upgrade'"

