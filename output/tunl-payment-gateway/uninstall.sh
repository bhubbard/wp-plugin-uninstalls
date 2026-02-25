#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tunl_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tunl_paymentid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tunl_paymentid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tunl_paymentid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tunl_paymentid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'check_tunlpayment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'check_tunlpayment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'check_tunlpayment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'check_tunlpayment'"
