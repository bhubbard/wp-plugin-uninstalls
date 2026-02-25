#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_version'
wp option delete 'alg_wc_ccf_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"

