#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image_optimizer_subscription_id'
wp option delete 'image_optimizer_client_data'
wp option delete 'image_optimizer_optimization_stats'
wp option delete 'elementor_connect_site_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%welcome_screen_completed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dismiss_connect_alert'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%editor_update_notification_dismissed'"

# Delete Transients
wp transient delete 'elementor_image_optimization_campaign'
wp transient delete 'update_plugins'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

