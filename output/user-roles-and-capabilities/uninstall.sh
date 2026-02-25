#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'solvease_wprc_plugin_version'
wp option delete 'solvease_wp_rc_caps'
wp option delete 'wp_user_roles'

