#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-autorefresh'
wp option delete 'wp-autorefresh-version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_auto_reload_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_auto_reload_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_auto_reload_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_auto_reload_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_auto_reload_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_auto_reload_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_auto_reload_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_auto_reload_time'"
