#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'import_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'import_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'import_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'import_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'import_xml_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'import_xml_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'import_xml_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'import_xml_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'import_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'import_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'import_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'import_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'import_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'import_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'import_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'import_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'import_selected_node'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'import_selected_node'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'import_selected_node'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'import_selected_node'"
