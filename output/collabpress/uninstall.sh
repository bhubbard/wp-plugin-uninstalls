#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cp_options'
wp option delete 'cp_dismissed_messages'
wp option delete 'cp-options'
wp option delete 'cp_version'

# Delete Transients
wp transient delete 'presstrends_cache_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-task-list-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-task-list-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-task-list-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-task-list-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-project-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-project-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-project-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-project-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-meta-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-meta-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-meta-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-meta-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-activity-action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-activity-action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-activity-action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-activity-action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-activity-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-activity-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-activity-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-activity-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-activity-author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-activity-author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-activity-author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-activity-author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-activity-ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-activity-ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-activity-ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-activity-ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-task-assign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-task-assign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-task-assign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-task-assign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-task-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-task-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-task-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-task-status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-task-due'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-task-due'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-task-due'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-task-due'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-project-users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-project-users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-project-users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-project-users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-task-priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-task-priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-task-priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-task-priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-project-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-project-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-project-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-project-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp-task-list-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp-task-list-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp-task-list-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp-task-list-description'"
