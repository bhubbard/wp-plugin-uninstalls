#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hbp_disabler_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hbp_disabler_admin_notice_%'"
wp option delete 'hbp_disabler_db_version'
wp option delete 'disabler_autop'
wp option delete 'disabler_options'
wp option delete 'disabler_settings'
wp option delete 'hbp_disabler_admin_install_timestamp'
wp option delete 'hbp_disabler_settings'
wp option delete 'hbp_disabler_version'
wp option delete 'disabler_version'
wp option delete 'disabler_xmlrpc'
wp option delete 'disabler_autosave'
wp option delete 'disabler_selfping'
wp option delete 'disabler_norss'
wp option delete 'disabler_capitalp'
wp option delete 'disabler_revisions'
wp option delete 'disabler_nourl'
wp option delete 'new_version'
wp option delete 'disabler_smartquotes'
wp option delete 'disabler_plugin_version'
wp option delete 'disabler_admin_notices'
wp option delete 'disabler_db_version'

# Delete Transients
wp transient delete 'hbp_disabler_installing'
wp transient delete '_hbp_disabler_activation_redirect'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'wp_update_themes'
wp cron event delete 'wp_update_plugins'
wp cron event delete 'wp_version_check'
wp cron event delete 'wp_maybe_auto_update'
wp cron event delete 'hbp_disabler_cleanup_logs'
wp cron event delete 'hbp_disabler_send_tracking_data_after_core_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
