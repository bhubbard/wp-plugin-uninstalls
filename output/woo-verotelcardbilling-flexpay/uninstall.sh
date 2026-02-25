#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_verotel_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verotel_flexpay_saleID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verotel_flexpay_saleID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verotel_flexpay_saleID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verotel_flexpay_saleID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verotel_flexpay_cancelledByCC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verotel_flexpay_cancelledByCC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verotel_flexpay_cancelledByCC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verotel_flexpay_cancelledByCC'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_verotel_flexpay_transactionID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_verotel_flexpay_transactionID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_verotel_flexpay_transactionID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_verotel_flexpay_transactionID'"
