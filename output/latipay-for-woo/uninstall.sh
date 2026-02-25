#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xh_latipay'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_nzbanks_settings'
wp option delete 'woocommerce_payid_settings'

