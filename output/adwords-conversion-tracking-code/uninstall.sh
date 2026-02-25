#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'actc_adword_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'actc_adtc_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'actc_adtc_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'actc_adtc_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'actc_adtc_value'"
