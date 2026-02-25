#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mksso_%'"
wp option delete 'mksso_qq'
wp option delete 'mksso_dy'
wp option delete 'mksso_wx'
wp option delete 'mksso_wb'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_openid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_openid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_openid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_openid'"
