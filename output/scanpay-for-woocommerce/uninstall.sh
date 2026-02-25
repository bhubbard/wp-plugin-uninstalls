#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_scanpay_version'
wp option delete 'woocommerce_scanpay_settings'
wp option delete 'woocommerce_scanpay_mobilepay_settings'
wp option delete 'woocommerce_scanpay_applepay_settings'

# Delete Transients
wp transient delete 'wc_scanpay_updating'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_needs_processing' OR option_name LIKE '_site_transient_%_needs_processing'"

