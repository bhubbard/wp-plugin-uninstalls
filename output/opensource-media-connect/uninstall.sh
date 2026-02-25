#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'opensource_media_connect_client_id'
wp option delete 'opensource_media_connect_access_token'
wp option delete 'opensource_media_connect_client_secret'

# Delete Transients
wp transient delete 'opensource_media_connect_access_token'

