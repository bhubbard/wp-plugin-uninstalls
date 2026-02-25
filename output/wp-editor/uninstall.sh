#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpe_settings'
wp option delete 'wpe_settings_general'
wp option delete 'wpe_settings_theme_editor'
wp option delete 'wpe_settings_plugin_editor'
wp option delete 'wpe_settings_post_editor'
wp option delete 'wpe_settings_license'
wp option delete 'wpe_log_file_name'

