#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'settagord_separator'
wp option delete 'settagord_class'
wp option delete 'settagord_debug_mode'
wp option delete 'classic-editor-replace'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_settagord'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_settagord'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_settagord'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_settagord'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settagord_detected_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settagord_detected_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settagord_detected_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settagord_detected_editor'"
