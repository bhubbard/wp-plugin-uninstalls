#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sm_uci_pro_settings'
wp option delete 'smack_image_options'
wp option delete 'total_attachment_ids'
wp option delete 'failed_attachment_ids'
wp option delete 'wpmembers_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smack_uci_import'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smack_uci_import'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smack_uci_import'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smack_uci_import'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendPassword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendPassword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendPassword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendPassword'"
