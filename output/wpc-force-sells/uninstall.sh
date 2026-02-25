#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woofs_settings'
wp option delete 'woofs_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woofs_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woofs_separately'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woofs_separately'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woofs_separately'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woofs_separately'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woofs_sync_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woofs_sync_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woofs_sync_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woofs_sync_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woofs_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woofs_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woofs_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woofs_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woofs_before_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woofs_before_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woofs_before_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woofs_before_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woofs_after_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woofs_after_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woofs_after_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woofs_after_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woofs_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woofs_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woofs_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woofs_ids'"
