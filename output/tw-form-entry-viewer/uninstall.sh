#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twfev_entry_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twfev_entry_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twfev_entry_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twfev_entry_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twfev_submitted_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twfev_submitted_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twfev_submitted_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twfev_submitted_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twfev_form_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twfev_form_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twfev_form_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twfev_form_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twfev_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twfev_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twfev_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twfev_form_id'"
