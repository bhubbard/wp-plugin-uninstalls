#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eselt_api_keys'
wp option delete 'eselt_inventory_movements_db_version'

# Delete Transients
wp transient delete 'eselt_admin_notice_error'
wp transient delete 'eselt_admin_notice_success'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
