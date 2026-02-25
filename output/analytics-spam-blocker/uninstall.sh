#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ajdg_spamblocker_domains'
wp option delete 'ajdg_activate_analytics-spam-blocker'
wp option delete 'ajdg_spamblocker_hide_birthday'
wp option delete 'ajdg_spamblocker_hide_review'
wp option delete 'ajdg_spamblocker_updates'
wp option delete 'ajdg_spamblocker_user'
wp option delete 'ajdg_spamblocker_stats'
wp option delete 'ajdg_spamblocker_error'
wp option delete 'ajdg_spamblocker_subscription'
wp option delete 'ajdg_spamblocker_reports'
wp option delete 'ajdg_spamblocker_hide_register'
wp option delete 'ajdg_spamblocker_version'

# Delete Transients
wp transient delete 'ajdg_update_analytics-spam-blocker'

# Clear Cron Jobs
wp cron event delete 'spamblocker_get_spam_domains'
wp cron event delete 'ajdg_api_stats_update'

