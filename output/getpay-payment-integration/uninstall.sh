#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_getpay_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_getpay_field_errors_%' OR option_name LIKE '_site_transient_getpay_field_errors_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_getpayint_field_errors_%' OR option_name LIKE '_site_transient_getpayint_field_errors_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_getpay_posted_values_%' OR option_name LIKE '_site_transient_getpay_posted_values_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_getpayint_posted_values_%' OR option_name LIKE '_site_transient_getpayint_posted_values_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
