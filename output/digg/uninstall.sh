#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'digg_setting_%'"
wp option delete 'digg_setting_button_style'
wp option delete 'digg_setting_widget_advanced'
wp option delete 'digg_setting_button_enabled'
wp option delete 'digg_setting_widget_html'
wp option delete 'digg_setting_button_location'
wp option delete 'digg_setting_button_type'
wp option delete 'digg_setting_button_position'
wp option delete 'digg_setting_button_alignment'
wp option delete 'digg_setting_button_topic'
wp option delete 'digg_setting_widget_json'
wp option delete 'digg_setting_widget_enabled'

