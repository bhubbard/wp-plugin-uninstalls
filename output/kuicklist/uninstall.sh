#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_kuick_list_api_key'
wp option delete '_kuicklist_api_key'

# Delete Transients
wp transient delete '_kuicklist_checklists_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__kuicklist_checklist_data_%' OR option_name LIKE '_site_transient__kuicklist_checklist_data_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kuick_list_checklist_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kuick_list_checklist_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kuick_list_checklist_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kuick_list_checklist_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kuicklist_no_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kuicklist_no_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kuicklist_no_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kuicklist_no_optin'"
