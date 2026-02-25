#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yfw_settings_agendas'
wp option delete 'yfw_settings_blogs'
wp option delete 'yfw_settings_general'
wp option delete 'yfw_settings_knowledge_bases'
wp option delete 'yfw_settings_news'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_item_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_item_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_item_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_item_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yfw_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yfw_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yfw_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yfw_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yfw_user_item_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yfw_user_item_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yfw_user_item_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yfw_user_item_roles'"
