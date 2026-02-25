#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hkd_telcell_version_option'
wp option delete 'language_payment_telcell'
wp option delete 'hkdigital_telcell_checkout_id'
wp option delete 'hkd_check_activation_telcell'
wp option delete 'hkdigital_dump_telcell'
wp option delete 'woocommerce_hkd_telcell_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PaymentID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PaymentID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PaymentID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PaymentID'"
