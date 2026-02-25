#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ghlcf7_locationId'
wp option delete 'ghlcf7_name_fields'
wp option delete 'ghlcf7_email_field'
wp option delete 'ghlcf7_phne_field'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ghlcf7_checkbox_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ghlcf7_tag_%'"
wp option delete 'ghlcf7-global-tag-names'
wp option delete 'ghlcf7_access_token'
wp option delete 'ghlcf7_client_id'
wp option delete 'ghlcf7_client_secret'
wp option delete 'ghlcf7_refresh_token'
wp option delete 'ghlcf7_loc_name'
wp option delete 'ghlcf7_location_connected'

# Delete Transients
wp transient delete 'ghlcf7_access_token_valid'
wp transient delete 'ghlcf7_location_tags'
wp transient delete 'ghlcf7_location_wokflow'

