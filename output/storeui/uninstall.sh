#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storeui_license_key'
wp option delete 'storeui_wc_api_keys'
wp option delete 'storeui_app_password'
wp option delete 'storeui_debug_mode'
wp option delete 'storeui_license_active'

# Delete Transients
wp transient delete 'storeui_messages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_application_passwords'"
