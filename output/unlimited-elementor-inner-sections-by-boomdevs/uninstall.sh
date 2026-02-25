#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prime_elementor_addons_settings'
wp option delete 'pea_plugin_version'
wp option delete 'pea_last_updated'
wp option delete 'pea_active_widgets'
wp option delete 'prime_elementor_addons_do_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

