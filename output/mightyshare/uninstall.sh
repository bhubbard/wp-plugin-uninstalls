#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mightyshare'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mightyshare_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mightyshare_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mightyshare_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mightyshare_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mightyshare_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mightyshare_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mightyshare_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mightyshare_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mightyshare_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mightyshare_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mightyshare_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mightyshare_title'"
