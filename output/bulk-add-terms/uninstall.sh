#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ts_bat_hide_nonhirearchicals'
wp option delete 'ts_bat_select_multiple'
wp option delete 'ts_bat_hide_real_name'
wp option delete 'ts_bat_hide_get'
wp option delete 'ts_bat_hide_remove'
wp option delete 'ts_bat_dont_empty'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ts_bulk_add_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ts_bulk_add_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ts_bulk_add_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ts_bulk_add_term'"
