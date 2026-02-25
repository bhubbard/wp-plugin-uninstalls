#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aac_plugin_version'
wp option delete 'aac_commenters_list'
wp option delete 'aac_usernames_list'
wp option delete 'aac_roles_list'
wp option delete 'userid_list'
wp option delete 'commenters_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_error'"
