#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bisteinoff_plugin_robots_custom'
wp option delete 'bisteinoff_plugin_robots_custom_google'
wp option delete 'bisteinoff_plugin_robots_enable_yandex'
wp option delete 'bisteinoff_plugin_robots_custom_yandex'
wp option delete 'bisteinoff_plugin_robots_custom_other'

