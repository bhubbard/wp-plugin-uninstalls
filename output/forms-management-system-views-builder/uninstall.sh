#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fvb_general_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fms_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fms_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fms_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fms_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvb_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvb_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvb_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvb_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvb_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvb_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvb_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvb_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fms_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fms_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fms_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fms_form_id'"
