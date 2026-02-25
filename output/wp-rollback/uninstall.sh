#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_just_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_permalinks_flushed'"
wp option delete 'active_sitewide_plugins'
wp option delete 'allowedthemes'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpr_plugin_was_active_%' OR option_name LIKE '_site_transient_wpr_plugin_was_active_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpr_theme_was_active_%' OR option_name LIKE '_site_transient_wpr_theme_was_active_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpr_plugin_activation_failed_%' OR option_name LIKE '_site_transient_wpr_plugin_activation_failed_%'"

