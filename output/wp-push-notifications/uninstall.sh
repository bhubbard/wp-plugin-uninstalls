#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'offline_shell_files'
wp option delete 'offline_shell_enabled'
wp option delete 'offline_shell_debug'
wp option delete 'offline_shell_race_enabled'
wp option delete 'wppn_options_post_types'
wp option delete 'wppn_options_schedule'
wp option delete 'wppn_notification_title'
wp option delete 'wppn_notification_body'
wp option delete 'wppn_notification_icon'
wp option delete 'wppn_notification_link'
wp option delete 'wppn_per_page'

