#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtp_hooks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'screen_layout_appearance_page_rtp_hooks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'screen_layout_appearance_page_rtp_hooks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'screen_layout_appearance_page_rtp_hooks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'screen_layout_appearance_page_rtp_hooks'"
