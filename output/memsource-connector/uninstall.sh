#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'memsource_admin_user'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpml_post_translation_editor_native'"
