#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eings_gsheet_files'
wp option delete 'eings_token_verify'
wp option delete 'eings_settings'
wp option delete 'eings_access_token'
wp option delete 'eings_account_info'
wp option delete 'eings_saved_integrations'

# Delete Transients
wp transient delete 'eings_gsheet_headers'
wp transient delete 'eings_gsheet_tabs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eings_cf7_form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eings_cf7_form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eings_cf7_form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eings_cf7_form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eings_field_map_keys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eings_field_map_keys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eings_field_map_keys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eings_field_map_keys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
