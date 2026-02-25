#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acswp_plugin_dismiss_rating_notice'
wp option delete 'acswp_plugin_dismiss_donate_notice'
wp option delete 'acswp_plugin_no_thanks_rating_notice'
wp option delete 'acswp_plugin_dismissed_time'
wp option delete 'acswp_plugin_no_thanks_donate_notice'
wp option delete 'acswp_plugin_dismissed_time_donate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice'"
wp option delete 'acswp_plugin_installed_time'
wp option delete 'acswp_settings'
wp option delete 'acswp_unique_action'

# Delete Transients
wp transient delete 'acswp-show-notice-on-activation'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

