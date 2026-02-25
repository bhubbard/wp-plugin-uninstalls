#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'um_online_users'
wp option delete 'um_online_users_last_updated'
wp option delete 'um_options'
wp option delete 'um_online_version'
wp option delete 'um_online_last_version_upgrade'
wp option delete 'widget_um_online_users'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hide_online_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hide_online_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hide_online_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hide_online_status'"
