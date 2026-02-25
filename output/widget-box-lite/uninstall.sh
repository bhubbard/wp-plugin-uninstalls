#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_box_lite_no_theme4press_theme_notice'
wp option delete 'widget_box_lite_activation_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_box_lite_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

