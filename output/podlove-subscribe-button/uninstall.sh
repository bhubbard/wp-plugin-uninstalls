#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'podlove_subscribe_button_default_%'"
wp option delete 'podlove_subscribe_button_default_size'
wp option delete 'podlove_subscribe_button_default_style'
wp option delete 'podlove_subscribe_button_default_format'
wp option delete 'podlove_subscribe_button_default_color'
wp option delete 'podlove_subscribe_button_default_autowidth'
wp option delete 'podlove_subscribe_button_plugin_database_version'

