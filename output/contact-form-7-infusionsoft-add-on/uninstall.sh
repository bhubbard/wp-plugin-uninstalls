#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'infusionsoft_app_name'
wp option delete 'infusionsoft_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7_infusionsoft_addon_tag_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7_infusionsoft_addon_tag_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7_infusionsoft_addon_tag_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7_infusionsoft_addon_tag_key'"
