#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tolstoycomments_key'
wp option delete 'tolstoycomments_site_id'
wp option delete 'tolstoycomments_export'
wp option delete 'tolstoycomments_export_latest_id'
wp option delete 'tolstoycomments_import'
wp option delete 'tolstoycomments_active'
wp option delete 'tolstoycomments_binding'
wp option delete 'tolstoycomments_index'
wp option delete 'tolstoycomments_custom_settings'
wp option delete 'tolstoycomments'

# Clear Cron Jobs
wp cron event delete 'tolstoycomments_cron_task_queue'
wp cron event delete 'tolstoycomments_cron_task'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tolstoycomments_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tolstoycomments_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tolstoycomments_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tolstoycomments_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tolstoycomments_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tolstoycomments_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tolstoycomments_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tolstoycomments_id'"
