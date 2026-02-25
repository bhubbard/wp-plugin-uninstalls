#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eca_socialnotify_cf7_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socialnotify_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socialnotify_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socialnotify_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socialnotify_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socialnotify_error_logs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socialnotify_error_logs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socialnotify_error_logs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socialnotify_error_logs'"
