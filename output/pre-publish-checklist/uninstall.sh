#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppc_cpt_checklist_data'
wp option delete 'ppc_post_types_to_display'
wp option delete 'ppc_error_level'
wp option delete 'ppc_checklist_data'
wp option delete '_ppc_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppc_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppc_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppc_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppc_meta_key'"
