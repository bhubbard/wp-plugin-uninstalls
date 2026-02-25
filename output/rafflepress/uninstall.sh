#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rafflepress_version'
wp option delete 'rafflepress_run_activation'
wp option delete 'rafflepress_settings'
wp option delete 'rafflepress_api_key '
wp option delete 'rafflepress_per'
wp option delete 'rafflepress_a'
wp option delete 'rafflepress_one_click_upgrade'
wp option delete 'rafflepress_api_token'
wp option delete 'rafflepress_token'
wp option delete 'rafflepress_license_name'
wp option delete 'rafflepress_api_key'
wp option delete 'rafflepress_api_message'
wp option delete 'rafflepress_over_time'
wp option delete 'dashboards_disabled'
wp option delete 'rafflepress_hide_review'
wp option delete 'rafflepress_review'
wp option delete 'rafflepress_log'
wp option delete 'rafflepress_enable_log'
wp option delete 'rafflepress_dismiss_settings_lite_cta'
wp option delete 'rafflepress_initial_version'

# Delete Transients
wp transient delete '_rafflepress_welcome_screen_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'rafflepress_notifications_remote'
wp cron event delete 'rafflepress_lite_fetch_help_docs'
wp cron event delete 'seedprod_fetch_help_docs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rafflepress_creating_giveaway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rafflepress_creating_giveaway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rafflepress_creating_giveaway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rafflepress_creating_giveaway'"
