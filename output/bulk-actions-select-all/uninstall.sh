#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'basa_version'
wp option delete 'basa_installed_timestamp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'basa/notice_disabled/feedback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'basa/notice_disabled/feedback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'basa/notice_disabled/feedback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'basa/notice_disabled/feedback'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
