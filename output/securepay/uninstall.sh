#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_securepay_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_wc_gw_banklist' OR option_name LIKE '_site_transient_%_wc_gw_banklist'"

