#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'NeatlyGoneWhatToHide'
wp option delete 'DBSfuncy'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_DBS_NG_REDIRECT_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_DBS_NG_REDIRECT_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_DBS_NG_REDIRECT_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_DBS_NG_REDIRECT_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_DBS_NG_HOW_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_DBS_NG_HOW_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_DBS_NG_HOW_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_DBS_NG_HOW_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_DBS_NG_TO_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_DBS_NG_TO_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_DBS_NG_TO_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_DBS_NG_TO_'"
