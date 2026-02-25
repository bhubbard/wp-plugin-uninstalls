#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'heartbeat_control_settings'
wp option delete 'imagify_settings'
wp option delete 'heartbeat_control_version'
wp option delete 'heartbeat_location'
wp option delete 'heartbeat_frequency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
