#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kl_addnewdefaultavatar'
wp option delete 'add_new_default_avatar'
wp option delete 'pre_anda_avatar_default'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simple_local_avatar'"
