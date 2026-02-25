#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edw_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'articles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'articles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'articles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'articles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sections'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sections'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sections'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sections'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'export_status_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'export_status_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'export_status_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'export_status_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'export_status_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'export_status_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'export_status_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'export_status_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'section-order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'section-order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'section-order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'section-order'"
