#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_phoeniixx_custom_additional_fields'
wp option delete '_phoeniixx_custom_billing_fields'
wp option delete '_phoeniixx_custom_shipping_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phoeniixx_checkout_manager_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phoeniixx_checkout_manager_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phoeniixx_checkout_manager_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phoeniixx_checkout_manager_ignore_notice'"
