#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rencontre_options'
wp option delete 'rencontre_mailPerHour'
wp option delete 'rencontre_dbip'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rencontre_confirm_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rencontre_confirm_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rencontre_confirm_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rencontre_confirm_email'"
