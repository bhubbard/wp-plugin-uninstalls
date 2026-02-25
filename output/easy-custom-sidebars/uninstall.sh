#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecs_version'
wp option delete 'ecs_force_user_redirect'
wp option delete 'ecs_show_admin_pointer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sidebar_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sidebar_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sidebar_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sidebar_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sidebar_replacement_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sidebar_replacement_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sidebar_replacement_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sidebar_replacement_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sidebar_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sidebar_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sidebar_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sidebar_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sidebar_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sidebar_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sidebar_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sidebar_id'"
