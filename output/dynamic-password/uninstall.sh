#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_dy_pwd_master_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dy_pwd_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dy_pwd_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dy_pwd_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dy_pwd_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dy_pwd_val'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dy_pwd_val'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dy_pwd_val'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dy_pwd_val'"
