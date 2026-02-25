#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WGAPIA_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wg_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wg_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wg_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wg_account_id'"
