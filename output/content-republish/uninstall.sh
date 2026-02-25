#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_republish_cloned_child'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_republish_cloned_child'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_republish_cloned_child'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_republish_cloned_child'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_republish_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_republish_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_republish_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_republish_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_republish_post_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_republish_post_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_republish_post_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_republish_post_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_republish_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_republish_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_republish_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_republish_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_republish_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_republish_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_republish_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_republish_status'"
