#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ip2location_tags_lookup_mode'
wp option delete 'ip2location_tags_database'
wp option delete 'ip2location_tags_api_key'
wp option delete 'ip2location_tags_io_api_key'
wp option delete 'ip2location_tags_debug_log_enabled'
wp option delete 'ip2location_tags_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip2location_tags_admin_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip2location_tags_admin_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip2location_tags_admin_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip2location_tags_admin_notice'"
