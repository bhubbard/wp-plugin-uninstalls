#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cta_custom_block_notice_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cta_custom_block_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cta_custom_block_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cta_custom_block_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cta_custom_block_dismissed'"
