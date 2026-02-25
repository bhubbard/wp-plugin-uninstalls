#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'stc_enabled'
wp option delete 'registration'
wp option delete 'subscribe_reloaded_version'
wp option delete 'subscribe_reloaded_show_subscription_box'
wp option delete 'subscribe_reloaded_checked_by_default'
wp option delete 'subscribe_reloaded_enable_advanced_subscriptions'
wp option delete 'subscribe_reloaded_default_subscription_type'
wp option delete 'subscribe_reloaded_from_name'
wp option delete 'subscribe_reloaded_from_email'
wp option delete 'subscribe_reloaded_enable_double_check'
wp option delete 'subscribe_reloaded_notify_authors'
wp option delete 'subscribe_reloaded_admin_bcc'
wp option delete 'subscribe_reloaded_enable_admin_messages'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_imported_stcr_subs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_imported_stcr_subs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_imported_stcr_subs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_imported_stcr_subs'"
