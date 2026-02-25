#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dn_cookie_notice_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dn_lang_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dn_lang_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dn_lang_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dn_lang_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'button'"
