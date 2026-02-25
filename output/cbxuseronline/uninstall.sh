#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbxuseronline_version'
wp option delete 'cbxuseronline_mostonline'
wp option delete 'cbxuseronline_basics'

# Delete Transients
wp transient delete 'cbxuseronline_deactivated_notice'
wp transient delete 'cbxuseronline_activated_notice'
wp transient delete 'cbxuseronline_upgraded_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxuseronline_lastlogin_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxuseronline_lastlogin_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxuseronline_lastlogin_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxuseronline_lastlogin_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxuseronline_lastlogin_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxuseronline_lastlogin_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxuseronline_lastlogin_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxuseronline_lastlogin_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxuseronline_second_lastlogin_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxuseronline_second_lastlogin_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxuseronline_second_lastlogin_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxuseronline_second_lastlogin_time'"
