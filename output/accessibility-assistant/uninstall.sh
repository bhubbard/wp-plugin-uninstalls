#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'accessibility_shopid'
wp option delete 'accessibility_primaryid'
wp option delete 'accessibility_install'
wp option delete 'my_plugin_selected_language'
wp option delete 'accessibility_do_redirect'
wp option delete 'ada_uninstall_reason'
wp option delete 'accessibility_tokken'
wp option delete 'accessibility_url'
wp option delete 'accessibility_plan'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'accessibility_widget_backup_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_accessibility_widget_data_%' OR option_name LIKE '_site_transient_accessibility_widget_data_%'"

