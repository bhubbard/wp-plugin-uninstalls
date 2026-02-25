#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rui_settings'
wp option delete 'rui_logs_count'

# Delete Transients
wp transient delete 'rui_logs_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rui_submit_on_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rui_submit_on_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rui_submit_on_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rui_submit_on_publish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rui_submit_on_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rui_submit_on_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rui_submit_on_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rui_submit_on_update'"
