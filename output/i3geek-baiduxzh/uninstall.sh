#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'I3GEEK_XZH_SETTING'
wp option delete 'I3GEEK_XZH_NOTICE'
wp option delete 'I3GEEK_XZH_SUBMITNUMBER'

# Delete Transients
wp transient delete 'I3GEEK_XZH_MSG_STATUS'
wp transient delete 'I3GEEK_XZH_MSG_CONTENT'
wp transient delete 'I3GEEK_XZH_LOG_WRITABLE'
wp transient delete 'I3GEEK_XZH_UPDATE_FLAG'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'i3geek_xzh_submit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'i3geek_xzh_submit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'i3geek_xzh_submit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'i3geek_xzh_submit'"
