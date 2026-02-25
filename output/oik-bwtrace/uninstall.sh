#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bw_summary_options'
wp option delete 'bw_trace_options'
wp option delete 'bw_trace_files_options'
wp option delete 'bw_action_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bw_image_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bw_image_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bw_image_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bw_image_link'"
