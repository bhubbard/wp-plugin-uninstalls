#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kk_postoption_ff'
wp option delete 'kk_message_ff'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ff_rolekadmin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ff_rolekadmin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ff_rolekadmin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ff_rolekadmin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ff_role_alowk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ff_role_alowk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ff_role_alowk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ff_role_alowk'"
