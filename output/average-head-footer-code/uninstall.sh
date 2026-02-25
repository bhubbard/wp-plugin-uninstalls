#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_wide_head_code'
wp option delete 'site_wide_footer_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avrghdftrcd_head_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avrghdftrcd_head_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avrghdftrcd_head_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avrghdftrcd_head_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avrghdftrcd_footer_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avrghdftrcd_footer_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avrghdftrcd_footer_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avrghdftrcd_footer_code'"
