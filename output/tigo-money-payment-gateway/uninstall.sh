#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tigo_checkers'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfsTransactionId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfsTransactionId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfsTransactionId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfsTransactionId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'merchantTransactionId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'merchantTransactionId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'merchantTransactionId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'merchantTransactionId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfsReverseTransactionId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfsReverseTransactionId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfsReverseTransactionId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfsReverseTransactionId'"
