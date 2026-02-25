#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ghlconnect_access_token'
wp option delete 'ghlconnect_locationId'
wp option delete 'ghlconnect_client_id'
wp option delete 'ghlconnect_client_secret'
wp option delete 'ghlconnect_refresh_token'
wp option delete 'ghlconnect_loc_name'
wp option delete 'woo_contact_id'
wp option delete 'ghlconnect_contact_register_choice'
wp option delete 'ghlconnect_location_connected'
wp option delete 'ghlconnect_order_status'

# Delete Transients
wp transient delete 'is_access_token_valid'
wp transient delete 'ghlconnect_location_tags'
wp transient delete 'ghlconnect_location_wokflow'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghlconnect_location_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghlconnect_location_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghlconnect_location_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghlconnect_location_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ghlconnect_location_workflow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ghlconnect_location_workflow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ghlconnect_location_workflow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ghlconnect_location_workflow'"
