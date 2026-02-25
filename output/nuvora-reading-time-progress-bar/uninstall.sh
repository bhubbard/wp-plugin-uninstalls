#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nvrtp_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nvrtp_disable_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nvrtp_disable_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nvrtp_disable_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nvrtp_disable_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nvrtp_reading_time_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nvrtp_reading_time_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nvrtp_reading_time_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nvrtp_reading_time_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nvrtp_disable_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nvrtp_disable_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nvrtp_disable_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nvrtp_disable_progress'"
