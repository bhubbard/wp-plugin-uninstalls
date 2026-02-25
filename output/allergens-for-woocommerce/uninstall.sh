#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'treceafw_icon_theme'
wp option delete '_wpml_custom_fields_translation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_afwv_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_afwv_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_afwv_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_afwv_%'"
