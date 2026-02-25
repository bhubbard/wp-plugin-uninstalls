#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idados_user_grupo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idados_user_grupo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idados_user_grupo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idados_user_grupo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pessoa_by_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pessoa_by_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pessoa_by_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pessoa_by_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'role'"
