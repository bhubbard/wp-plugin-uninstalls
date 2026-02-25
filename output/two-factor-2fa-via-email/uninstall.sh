#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SS88_2FAVE_notice_dismissed_smtp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'SS882FAEmail_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'SS882FAEmail_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'SS882FAEmail_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'SS882FAEmail_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'SS882FAEmail_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'SS882FAEmail_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'SS882FAEmail_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'SS882FAEmail_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'SS88_2FAVE_Enabled_API'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'SS88_2FAVE_Enabled_API'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'SS88_2FAVE_Enabled_API'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'SS88_2FAVE_Enabled_API'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'SS88_2FAVE_Enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'SS88_2FAVE_Enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'SS88_2FAVE_Enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'SS88_2FAVE_Enabled'"
