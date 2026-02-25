#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdf4metform'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metform_entries__form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metform_entries__form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metform_entries__form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metform_entries__form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metform_entries__form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metform_entries__form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metform_entries__form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metform_entries__form_data'"
