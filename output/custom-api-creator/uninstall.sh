#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cac_plugin_endpoint'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cac_plugin_endpoint'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cac_plugin_endpoint'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cac_plugin_endpoint'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cac_plugin_sections'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cac_plugin_sections'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cac_plugin_sections'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cac_plugin_sections'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cac_plugin_access_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cac_plugin_access_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cac_plugin_access_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cac_plugin_access_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cac_plugin_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cac_plugin_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cac_plugin_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cac_plugin_roles'"
