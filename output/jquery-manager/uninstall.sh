#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_jquery_manager_plugin_jquery_settings'
wp option delete 'wp_jquery_manager_plugin_jquery_migrate_settings'
wp option delete 'external_updates-wp_jquery_manager_plugin'

