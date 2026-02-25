#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'expirationdateDebug'
wp option delete 'classic-editor-replace'
wp option delete 'postexpiratorVersion'
wp option delete 'expirationdateDefaultDate'
wp option delete 'expirationdateExpiredPageStatus'
wp option delete 'expirationdateExpiredPostStatus'
wp option delete 'expirationdateDefaultsPage'
wp option delete 'expirationdateDefaultsPost'
wp option delete 'expirationdateCronSchedule'
wp option delete 'expirationdateAutoEnabled'
wp option delete 'pp_future_V30001RestorePostMeta'
wp option delete 'pp_future_V30104ArgsColumnLength'
wp option delete 'expirationdatePreserveData'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_post-expirator-notice-%' OR option_name LIKE '_site_transient_post-expirator-notice-%'"
wp transient delete 'pp_future_version_notices_version_error'

# Clear Cron Jobs
wp cron event delete 'expirationdate_delete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiration_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiration_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiration_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiration_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publishpressfuture_actions_log_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publishpressfuture_actions_log_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publishpressfuture_actions_log_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publishpressfuture_actions_log_format'"
