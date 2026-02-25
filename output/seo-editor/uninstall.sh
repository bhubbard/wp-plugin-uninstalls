#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'seo_editor_taxonomy_meta'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_editor_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_editor_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_editor_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_editor_reviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_editor_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_editor_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_editor_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_editor_notes'"
