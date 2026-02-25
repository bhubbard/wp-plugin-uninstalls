#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_name'
wp option delete 'ass_digest_time'
wp option delete 'ass_weekly_digest'
wp option delete 'ass-global-unsubscribe-link'
wp option delete 'ass_activity_frequency_ass_registered_req'
wp option delete 'ass-admin-can-edit-email'
wp option delete 'ass-admin-can-send-email'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'ass_digest_event'
wp cron event delete 'ass_digest_event_weekly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_activity_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_activity_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_activity_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_activity_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ges_digest_queue_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ges_digest_queue_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ges_digest_queue_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ges_digest_queue_migrated'"
