#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_zpal_referrer_id'
wp option delete 'woocommerce_WC_ZPal_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zarinpal_fee_detection_done_%'"

