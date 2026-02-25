#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webhookx_admin_menu'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default'"
wp option delete 'webhookx_admin_column_upload_default'
wp option delete 'webhookx_admin_column_edit-comments_default'
wp option delete 'webhookx_admin_column_users_default'
wp option delete 'webhookx_admin_menu_editor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'webhookx_admin_menu_role_%'"
wp option delete 'webhookx_addons'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'webhookx_admin_column_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'webhookx_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webhookx_admin_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webhookx_admin_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webhookx_admin_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webhookx_admin_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webhookx_who_can_see'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webhookx_who_can_see'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webhookx_who_can_see'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webhookx_who_can_see'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webhookx_who_can_see_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webhookx_who_can_see_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webhookx_who_can_see_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webhookx_who_can_see_roles'"
