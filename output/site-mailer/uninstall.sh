#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_mailer_plan_data'
wp option delete 'elementor_connect_site_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%welcome_screen_completed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dismiss_connect_alert'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%editor_update_notification_dismissed'"

# Delete Transients
wp transient delete 'elementor_site_mailer_campaign'
wp transient delete 'update_plugins'

