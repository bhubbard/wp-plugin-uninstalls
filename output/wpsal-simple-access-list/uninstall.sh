#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsal_allowed_cpt'
wp option delete 'wpsal_filter_menus_nav_blocks'
wp option delete 'wpsal_default_redirect_page_id'
wp option delete 'wpsal_always_allow_admins'
wp option delete 'wpsal_show_admin_column'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsal_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsal_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsal_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsal_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsal_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsal_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsal_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsal_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsal_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsal_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsal_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsal_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsal_has_permissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsal_has_permissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsal_has_permissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsal_has_permissions'"
