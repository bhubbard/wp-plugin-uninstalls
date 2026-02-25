#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icreon_wprc_plugin_version'
wp option delete 'icreon_wp_rc_caps'
wp option delete 'wp_user_roles'

