#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cp_editor_table'
wp option delete 'polylang'
wp option delete 'cp_editor_plugin_version'

# Delete Transients
wp transient delete 'cpe_pro_activation_blocked'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_editor'"
