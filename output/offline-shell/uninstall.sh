#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'offline_shell_enabled'
wp option delete 'offline_shell_debug'
wp option delete 'offline_shell_race_enabled'
wp option delete 'offline_shell_files'
wp option delete 'offline_shell_version'

