#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'target_blank'
wp option delete 'cria_hashtags'
wp option delete 'cria_users'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'bdf_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'bdf_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'bdf_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bdf_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bdf_disable_hashtags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bdf_disable_hashtags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bdf_disable_hashtags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bdf_disable_hashtags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bdf_disable_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bdf_disable_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bdf_disable_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bdf_disable_users'"
