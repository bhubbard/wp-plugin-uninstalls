#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'popup_plugin_value_subject'
wp option delete 'popup_plugin_value_width'
wp option delete 'popup_plugin_value_maxwidth'
wp option delete 'popup_plugin_value_padding'
wp option delete 'popup_plugin_value_btncolor'
wp option delete 'popup_plugin_value_namecolor'
wp option delete 'popup_plugin_value_whatscolor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'popup_plugin_value_title%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'popup_plugin_value_link%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'popup_plugin_value_tab%'"
wp option delete 'popup_plugin_value_tag'
wp option delete 'popup_plugin_value_shortcode'
wp option delete 'popup_plugin_value_tab'

