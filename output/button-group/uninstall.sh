#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eb_settings'
wp option delete '_eb_reusable_block_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eb_attr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eb_attr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eb_attr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eb_attr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eb_reusable_block_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eb_reusable_block_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eb_reusable_block_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eb_reusable_block_ids'"
