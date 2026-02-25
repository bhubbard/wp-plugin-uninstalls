#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fus_settings'
wp option delete 'tikemp_recent_imp_users'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tikemp_recent_imp_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tikemp_recent_imp_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tikemp_recent_imp_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tikemp_recent_imp_users'"
