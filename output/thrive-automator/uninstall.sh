#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thrive_automator_activation_redirect'
wp option delete 'tap_log_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'tpm_bk_connection'

# Clear Cron Jobs
wp cron event delete 'tap_delayed_automations_improved'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tap-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tap-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tap-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tap-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thrive_social_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thrive_social_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thrive_social_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thrive_social_urls'"
