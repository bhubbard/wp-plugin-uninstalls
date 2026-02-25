#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vimo_csbl_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimo_csbl_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimo_csbl_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimo_csbl_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimo_csbl_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimo_csbl_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimo_csbl_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimo_csbl_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimo_csbl_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimo_csbl_selectedPages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimo_csbl_selectedPages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimo_csbl_selectedPages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimo_csbl_selectedPages'"
