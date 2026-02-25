#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mxsetting'
wp option delete 'mxupload_flag_data'
wp option delete 'mxupload_file_scan'
wp option delete 'mxupload_settings'
wp option delete 'ms_files_rewriting'

# Delete Transients
wp transient delete 'mxupload_plugin_data'

# Clear Cron Jobs
wp cron event delete 'mxupload_refresh_analysis'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
