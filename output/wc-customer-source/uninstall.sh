#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_customer_source_export'
wp option delete 'wc_customer_source_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_customer_source_checkout_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_customer_source_checkout_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_customer_source_checkout_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_customer_source_checkout_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_customer_source_checkout_other_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_customer_source_checkout_other_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_customer_source_checkout_other_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_customer_source_checkout_other_field'"
