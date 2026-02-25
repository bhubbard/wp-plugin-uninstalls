#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_record_ip_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_record_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_record_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_record_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_record_user_ip'"
