#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clicface_organi_settings'
wp option delete 'clicface_trombi_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'orgchart_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'orgchart_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'orgchart_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'orgchart_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'orgchart_boss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'orgchart_boss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'orgchart_boss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'orgchart_boss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'orgchart_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'orgchart_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'orgchart_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'orgchart_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'label_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'label_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'label_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'label_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_page_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_page_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_page_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_page_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_page_id'"
