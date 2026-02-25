#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EasyPhotoAlbum'
wp option delete 'epa_update_fields'
wp option delete 'EasyPhotoAlbumVersion'

# Delete Transients
wp transient delete 'epa_download_count'

