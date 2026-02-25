#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'gs_sf_version'
wp option delete 'api'

# Delete Transients
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_element_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_element_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_element_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_element_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_browser_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_browser_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_browser_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_browser_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_url'"
