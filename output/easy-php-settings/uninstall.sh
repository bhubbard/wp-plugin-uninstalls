#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_php_settings_settings'
wp option delete 'easy_php_settings_wp_memory_settings'
wp option delete 'easy_php_settings_debugging_settings'

