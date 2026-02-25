#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_wp_version_notifier_settings'
wp option delete 'plugin_wp_never_outdated_settings'

