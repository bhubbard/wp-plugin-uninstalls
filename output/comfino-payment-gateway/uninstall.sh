#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comfino_plugin_current_version'

# Delete Transients
wp transient delete 'comfino_plugin_updated'
wp transient delete 'comfino_plugin_prev_version'
wp transient delete 'comfino_plugin_updated_at'
wp transient delete 'comfino_plugin_reset_results'
wp transient delete 'comfino_error_log_cleared'
wp transient delete 'comfino_debug_log_cleared'
wp transient delete 'comfino_github_version_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comfino_debug_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comfino_debug_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comfino_debug_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comfino_debug_notice_dismissed'"
