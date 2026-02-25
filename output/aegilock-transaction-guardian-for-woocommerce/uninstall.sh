#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aegilock_tg_version'
wp option delete 'aegilock_wizard_completed'
wp option delete 'aegilock_wc_settings'
wp option delete 'aegilock_block_high_risk'
wp option delete 'aegilock_hold_medium_risk'
wp option delete 'aegilock_enabled'
wp option delete 'aegilock_activated_version'
wp option delete 'aegilock_activation_time'
wp option delete 'aegilock_tg_active'
wp option delete 'aegilock_tg_activated_at'
wp option delete 'aegilock_tg_db_ready'
wp option delete 'aegilock_tg_db_version'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'aegilock_tg_db_error'
wp transient delete 'aegilock_return_stats'
wp transient delete 'aegilock_wizard_error'

# Clear Cron Jobs
wp cron event delete 'aegilock_check_for_updates'
wp cron event delete 'aegilock_initial_activation_ping'
wp cron event delete 'aegilock_weekly_tracking'
wp cron event delete 'aegilock_wc_daily_cleanup'

