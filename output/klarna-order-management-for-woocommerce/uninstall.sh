#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kom_settings'
wp option delete 'woocommerce_kco_settings'
wp option delete 'woocommerce_klarna_payments_settings'
wp option delete 'woocommerce_tax_based_on'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'kp_unavailable_feature_ids'

