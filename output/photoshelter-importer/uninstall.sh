#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'photoshelter_importer_options'
wp option delete 'photoshelter_importer_oauth_client_id'
wp option delete 'photoshelter_importer_oauth_client_secret'
wp option delete 'photoshelter_importer_oauth_access_token'
wp option delete 'photoshelter_importer_oauth_access_token_expires'
wp option delete 'photoshelter_importer_oauth_access_token_expires_at'
wp option delete 'photoshelter_importer_oauth_refresh_token'
wp option delete 'photoshelter_importer_org_logged_in'
wp option delete 'photoshelter_importer_org_name'
wp option delete 'photoshelter_importer_user_id'
wp option delete 'photoshelter_importer_user_logged_in'

# Delete Transients
wp transient delete 'photoshelter_importer_token_set'
wp transient delete 'photoshelter_importer_oauth_state'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'photoshelter_importer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'photoshelter_importer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'photoshelter_importer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'photoshelter_importer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
