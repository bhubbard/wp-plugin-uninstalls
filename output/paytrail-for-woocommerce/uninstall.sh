#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paytrail_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
